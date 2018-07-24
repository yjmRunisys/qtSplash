#-------------------------------------------------
#
# Project created by QtCreator 2018-05-21T17:26:59
#
#-------------------------------------------------

QT       += core gui widgets

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = qtWidget
TEMPLATE = app

win32:{
    DEFINES += _AFXDLL

    SOURCES += stdafx.cpp

    HEADERS  += stdafx.h \
        targetver.h
}

SOURCES += main.cpp\
        mainwindow.cpp

HEADERS  += mainwindow.h

FORMS    += mainwindow.ui

DISTFILES += \
    image/logo.gif

RESOURCES += \
    qrc.qrc
