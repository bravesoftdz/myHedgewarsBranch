#include <QUdpSocket>
#include <QListWidget>

#include "netudpwidget.h"

#include <QDebug>

HWNetUdpWidget::HWNetUdpWidget(QWidget* parent) :
  QWidget(parent), mainLayout(this)
{
  serversList = new QListWidget(this);
  mainLayout.addWidget(serversList);
  pUdpSocket = new QUdpSocket(this);

  pUdpSocket->bind();//46632);
  connect(pUdpSocket, SIGNAL(readyRead()), this, SLOT(onClientRead()));
  pUdpSocket->writeDatagram("hedgewars client", QHostAddress::Broadcast, 46631);
}

void HWNetUdpWidget::onClientRead()
{
  while (pUdpSocket->hasPendingDatagrams()) {
    QByteArray datagram;
    datagram.resize(pUdpSocket->pendingDatagramSize());
    QHostAddress clientAddr;
    quint16 clientPort;
    pUdpSocket->readDatagram(datagram.data(), datagram.size(), &clientAddr, &clientPort);
    if(QString("%1").arg(datagram.data())==QString("hedgewars server")) {
      qDebug() << "detected server at " << clientAddr << ":" << clientPort;
      serversList->addItem(clientAddr.toString());
    }
  }
}
