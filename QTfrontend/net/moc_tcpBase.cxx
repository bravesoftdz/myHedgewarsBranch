/****************************************************************************
** Meta object code from reading C++ file 'tcpBase.h'
**
** Created: Thu Apr 6 20:32:33 2017
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "tcpBase.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'tcpBase.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_TCPBase[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       7,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: signature, parameters, type, tag, flags
       9,    8,    8,    8, 0x05,

 // slots: signature, parameters, type, tag, flags
      22,    8,    8,    8, 0x08,
      38,    8,    8,    8, 0x08,
      57,    8,    8,    8, 0x08,
      76,   70,    8,    8, 0x08,
     138,  118,    8,    8, 0x08,
     178,    8,    8,    8, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_TCPBase[] = {
    "TCPBase\0\0isReadyNow()\0NewConnection()\0"
    "ClientDisconnect()\0ClientRead()\0error\0"
    "StartProcessError(QProcess::ProcessError)\0"
    "exitCode,exitStatus\0"
    "onEngineDeath(int,QProcess::ExitStatus)\0"
    "tcpServerReady()\0"
};

void TCPBase::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        TCPBase *_t = static_cast<TCPBase *>(_o);
        switch (_id) {
        case 0: _t->isReadyNow(); break;
        case 1: _t->NewConnection(); break;
        case 2: _t->ClientDisconnect(); break;
        case 3: _t->ClientRead(); break;
        case 4: _t->StartProcessError((*reinterpret_cast< QProcess::ProcessError(*)>(_a[1]))); break;
        case 5: _t->onEngineDeath((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< QProcess::ExitStatus(*)>(_a[2]))); break;
        case 6: _t->tcpServerReady(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData TCPBase::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject TCPBase::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_TCPBase,
      qt_meta_data_TCPBase, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &TCPBase::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *TCPBase::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *TCPBase::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_TCPBase))
        return static_cast<void*>(const_cast< TCPBase*>(this));
    return QObject::qt_metacast(_clname);
}

int TCPBase::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 7)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 7;
    }
    return _id;
}

// SIGNAL 0
void TCPBase::isReadyNow()
{
    QMetaObject::activate(this, &staticMetaObject, 0, 0);
}
QT_END_MOC_NAMESPACE
