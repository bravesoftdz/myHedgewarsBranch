/****************************************************************************
** Meta object code from reading C++ file 'netudpserver.h'
**
** Created: Thu Apr 6 20:32:34 2017
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "netudpserver.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'netudpserver.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_HWNetUdpServer[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       2,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      16,   15,   15,   15, 0x0a,
      29,   15,   15,   15, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_HWNetUdpServer[] = {
    "HWNetUdpServer\0\0unregister()\0"
    "onClientRead()\0"
};

void HWNetUdpServer::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        HWNetUdpServer *_t = static_cast<HWNetUdpServer *>(_o);
        switch (_id) {
        case 0: _t->unregister(); break;
        case 1: _t->onClientRead(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObjectExtraData HWNetUdpServer::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject HWNetUdpServer::staticMetaObject = {
    { &HWNetRegisterServer::staticMetaObject, qt_meta_stringdata_HWNetUdpServer,
      qt_meta_data_HWNetUdpServer, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &HWNetUdpServer::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *HWNetUdpServer::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *HWNetUdpServer::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_HWNetUdpServer))
        return static_cast<void*>(const_cast< HWNetUdpServer*>(this));
    return HWNetRegisterServer::qt_metacast(_clname);
}

int HWNetUdpServer::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = HWNetRegisterServer::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 2)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
