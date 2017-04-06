/****************************************************************************
** Meta object code from reading C++ file 'playerslistmodel.h'
**
** Created: Thu Apr 6 20:32:32 2017
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "playerslistmodel.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'playerslistmodel.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_PlayersListModel[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      12,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       5,       // signalCount

 // signals: signature, parameters, type, tag, flags
      34,   18,   17,   17, 0x05,
      63,   58,   17,   17, 0x05,
      84,   18,   17,   17, 0x05,
     113,   58,   17,   17, 0x05,
     152,  139,   17,   17, 0x05,

 // slots: signature, parameters, type, tag, flags
     202,  186,   17,   17, 0x0a,
     239,  226,   17,   17, 0x0a,
     278,  269,   17,   17, 0x2a,
     300,  186,   17,   17, 0x0a,
     331,  269,   17,   17, 0x0a,
     355,   17,   17,   17, 0x0a,
     372,  269,   17,   17, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_PlayersListModel[] = {
    "PlayersListModel\0\0nick,notifyNick\0"
    "nickAdded(QString,bool)\0nick\0"
    "nickRemoved(QString)\0nickAddedLobby(QString,bool)\0"
    "nickRemovedLobby(QString)\0nick,message\0"
    "nickRemovedLobby(QString,QString)\0"
    "nickname,notify\0addPlayer(QString,bool)\0"
    "nickname,msg\0removePlayer(QString,QString)\0"
    "nickname\0removePlayer(QString)\0"
    "playerJoinedRoom(QString,bool)\0"
    "playerLeftRoom(QString)\0resetRoomFlags()\0"
    "setNickname(QString)\0"
};

void PlayersListModel::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        PlayersListModel *_t = static_cast<PlayersListModel *>(_o);
        switch (_id) {
        case 0: _t->nickAdded((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< bool(*)>(_a[2]))); break;
        case 1: _t->nickRemoved((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 2: _t->nickAddedLobby((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< bool(*)>(_a[2]))); break;
        case 3: _t->nickRemovedLobby((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 4: _t->nickRemovedLobby((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2]))); break;
        case 5: _t->addPlayer((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< bool(*)>(_a[2]))); break;
        case 6: _t->removePlayer((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2]))); break;
        case 7: _t->removePlayer((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 8: _t->playerJoinedRoom((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< bool(*)>(_a[2]))); break;
        case 9: _t->playerLeftRoom((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 10: _t->resetRoomFlags(); break;
        case 11: _t->setNickname((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData PlayersListModel::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject PlayersListModel::staticMetaObject = {
    { &QAbstractListModel::staticMetaObject, qt_meta_stringdata_PlayersListModel,
      qt_meta_data_PlayersListModel, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &PlayersListModel::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *PlayersListModel::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *PlayersListModel::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_PlayersListModel))
        return static_cast<void*>(const_cast< PlayersListModel*>(this));
    return QAbstractListModel::qt_metacast(_clname);
}

int PlayersListModel::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QAbstractListModel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 12)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 12;
    }
    return _id;
}

// SIGNAL 0
void PlayersListModel::nickAdded(const QString & _t1, bool _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void PlayersListModel::nickRemoved(const QString & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void PlayersListModel::nickAddedLobby(const QString & _t1, bool _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void PlayersListModel::nickRemovedLobby(const QString & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}

// SIGNAL 4
void PlayersListModel::nickRemovedLobby(const QString & _t1, const QString & _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 4, _a);
}
QT_END_MOC_NAMESPACE
