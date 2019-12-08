#include "opencv2/opencv.hpp"
#include <iostream>
#include <sys/socket.h> 
#include <arpa/inet.h>
#include <sys/ioctl.h>
#include <net/if.h>
#include <unistd.h> 
#include <string.h>
#include <thread>

#define POCET_KLIENTU 20

void *klient(int *remoteSocket, int *imgSize, cv::Mat *imgGray, bool *next)
{
	int bytes = 0;
	while (1)
	{
		while (*next == true)
		{
			//send processed image
	    	if ((bytes = send(*remoteSocket, imgGray->data, *imgSize, 0)) < 0)
	   		{
	       		std::cerr << "bytes = " << bytes << std::endl;
	        	break;
	    	} 
	    	std::cout << "send frame" << std::endl;
	    	*next = false;
		}
		
	}
}

void camera(cv::VideoCapture *cap, int *imgSize, cv::Mat *img, cv::Mat *flippedFrame, bool *next )
{
    *img = cv::Mat::zeros(480 , 640, CV_8UC3);  
    if (!img->isContinuous()) 
    {
        *img = img->clone();
    }
    *imgSize = img->total() * img->elemSize();
    int bytes = 0;
    int key;
    if ( !img->isContinuous() ) 
    { 
          *img = img->clone();
          
    }
    std::cout << "Image Size:" << *imgSize << std::endl;
    while(1) 
    {
        *cap >> *img;
        flip(*img, *flippedFrame, 1);
    	*next = true;
    }
}

int main()
{
	/*
		vytváření proměnných
		a všech potřebných záležitostí
	*/
	sockaddr_in sockName;         
    sockaddr_in clientInfo[POCET_KLIENTU];       
    socklen_t addrlen[POCET_KLIENTU];            
    int mainSocket;               
    int port = 4097;;             
    int klienti[POCET_KLIENTU];
    int volne_poz[POCET_KLIENTU];
	std::thread vlakna[20];
	cv::VideoCapture cap(0);
    /*
    	vytvoření socketu
    */
	if ((mainSocket = socket(AF_INET, SOCK_STREAM, 0)) == -1)
    {
    	std::cerr << "Nelze vytvořit soket" << std::endl;
    	return -1;
    }
     
    sockName.sin_family = AF_INET;
    sockName.sin_port = htons(port);
    sockName.sin_addr.s_addr = INADDR_ANY;
    /*
    	bindování socketu
    */
    if (bind(mainSocket, (sockaddr *)&sockName, sizeof(sockName)) == -1)
    {
    	std::cerr << "Problém s pojmenováním soketu." << std::endl;
    	return -1;
    }
    listen(mainSocket , 3);
    for (int i = 0; i < POCET_KLIENTU; i++)
    {
    	addrlen[i] = sizeof(clientInfo[i]);
    }
    /*
    	přijímání klientů
    		[v plánu je udělat kompleksnější přiřazovací algoritmus]
    */
    bool next;
    int imgSize;
    cv::Mat img, flippedFrame;
    std::thread thread_camera(camera, &cap, &imgSize, &img, &flippedFrame, &next);

    int i = 0;
    while(1)
    {
    	i++;    	
    	std::cout << "[Server] připravena pozice " << i << std::endl;
    	klienti[i] = accept(mainSocket, (sockaddr*)&clientInfo[i], &addrlen[i]);
    	volne_poz[i] = 1;  	
	    vlakna[i] = std::thread(*klient, &klienti[i], &imgSize, &img, &next);
        std::cout << "Nový klient" << std::endl ;
    }
    std::cin.get();
    close(mainSocket);
	return 0;
}
