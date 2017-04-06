/****************************************************************************
** Meta object code from reading C++ file 'game.h'
**
** Created: Thu Apr 6 20:32:49 2017
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "game.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'game.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_HWGame[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      11,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       9,       // signalCount

 // signals: signature, parameters, type, tag, flags
      12,    8,    7,    7, 0x05,
      32,    8,    7,    7, 0x05,
      50,    8,    7,    7, 0x05,
      85,   75,    7,    7, 0x05,
     123,  113,    7,    7, 0x05,
     159,  147,    7,    7, 0x05,
     193,    7,    7,    7, 0x05,
     215,    7,    7,    7, 0x05,
     245,  237,    7,    7, 0x05,

 // slots: signature, parameters, type, tag, flags
     273,    8,    7,    7, 0x0a,
     293,    8,    7,    7, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_HWGame[] = {
    "HWGame\0\0msg\0SendNet(QByteArray)\0"
    "SendChat(QString)\0SendTeamMessage(QString)\0"
    "gameState\0GameStateChanged(GameState)\0"
    "type,info\0GameStats(char,QString)\0"
    "type,record\0HaveRecord(RecordType,QByteArray)\0"
    "ErrorMessage(QString)\0CampStateChanged(int)\0"
    "command\0SendConsoleCommand(QString)\0"
    "FromNet(QByteArray)\0FromNetChat(QString)\0"
};

void HWGame::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        HWGame *_t = static_cast<HWGame *>(_o);
        switch (_id) {
        case 0: _t->SendNet((*reinterpret_cast< const QByteArray(*)>(_a[1]))); break;
        case 1: _t->SendChat((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 2: _t->SendTeamMessage((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 3: _t->GameStateChanged((*reinterpret_cast< GameState(*)>(_a[1]))); break;
        case 4: _t->GameStats((*reinterpret_cast< char(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2]))); break;
        case 5: _t->HaveRecord((*reinterpret_cast< RecordType(*)>(_a[1])),(*reinterpret_cast< const QByteArray(*)>(_a[2]))); break;
        case 6: _t->ErrorMessage((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 7: _t->CampStateChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 8: _t->SendConsoleCommand((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 9: _t->FromNet((*reinterpret_cast< const QByteArray(*)>(_a[1]))); break;
        case 10: _t->FromNetChat((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData HWGame::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject HWGame::staticMetaObject = {
    { &TCPBase::staticMetaObject, qt_meta_stringdata_HWGame,
      qt_meta_data_HWGame, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &HWGame::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *HWGame::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *HWGame::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_HWGame))
        return static_cast<void*>(const_cast< HWGame*>(this));
    return TCPBase::qt_metacast(_clname);
}

int HWGame::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = TCPBase::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 11)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 11;
    }
    return _id;
}

// SIGNAL 0
void HWGame::SendNet(const QByteArray & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void HWGame::SendChat(const QString & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void HWGame::SendTeamMessage(const QString & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void HWGame::GameStateChanged(GameState _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}

// SIGNAL 4
void HWGame::GameStats(char _t1, const QString & _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 4, _a);
}

// SIGNAL 5
void HWGame::HaveRecord(RecordType _t1, const QByteArray & _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 5, _a);
}

// SIGNAL 6
void HWGame::ErrorMessage(const QString & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 6, _a);
}

// SIGNAL 7
void HWGame::CampStateChanged(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 7, _a);
}

// SIGNAL 8
void HWGame::SendConsoleCommand(const QString & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 8, _a);
}
QT_END_MOC_NAMESPACE
