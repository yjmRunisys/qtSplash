#include "stdafx.h"
#include "mainwindow.h"
#include <QApplication>
#include <QTextCodec>
#include <QSplashScreen>
#include <QDateTime>

int main(int argc, char *argv[])
{    

    //QTextCodec::setCodecForTr(QTextCodec::codecForName( "GB18030" ));
    QApplication app(argc,argv);

    QPixmap pixmap("image/logo.gif");      //绑定一个图片
    pixmap = pixmap.scaled(500,500);
    QSplashScreen *splash=new QSplashScreen;
    splash->setPixmap(pixmap);
    splash->show();                            //显示启动画面
    app.processEvents();                //加载其他的模块

    QDateTime n=QDateTime::currentDateTime();
    QDateTime now;
    do{
        now=QDateTime::currentDateTime();
    } while (n.secsTo(now)<=6);//6为需要延时的秒数

    MainWindow dialog;
    dialog.show();



    splash->finish(&dialog);     //当主窗口启动后，启动画面隐藏
    delete splash;

    return app.exec();
}
