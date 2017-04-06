/****************************************************************************
** Meta object code from reading C++ file 'pagenetgame.h'
**
** Created: Thu Apr 6 20:32:47 2017
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "pagenetgame.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'pagenetgame.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_PageNetGame[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      17,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       4,       // signalCount

 // signals: signature, parameters, type, tag, flags
      13,   12,   12,   12, 0x05,
      28,   12,   12,   12, 0x05,
      58,   12,   12,   12, 0x05,
      75,   72,   12,   12, 0x05,

 // slots: signature, parameters, type, tag, flags
     122,  113,   12,   12, 0x0a,
     151,  143,   12,   12, 0x0a,
     181,  172,   12,   12, 0x0a,
     198,   12,   12,   12, 0x0a,
     223,  214,   12,   12, 0x0a,
     243,   12,   12,   12, 0x0a,
     258,   12,   12,   12, 0x0a,
     282,   12,   12,   12, 0x0a,
     307,   72,   12,   12, 0x0a,
     353,   72,   12,   12, 0x0a,
     390,   12,   12,   12, 0x0a,
     420,  418,   12,   12, 0x0a,
     452,   12,   12,   12, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_PageNetGame[] = {
    "PageNetGame\0\0SetupClicked()\0"
    "askForUpdateRoomName(QString)\0"
    "toggleReady()\0,,\0locatorReply(QString,QString,QString)\0"
    "roomName\0setRoomName(QString)\0isReady\0"
    "setReadyStatus(bool)\0nickname\0"
    "setUser(QString)\0onUpdateClick()\0"
    "isMaster\0setMasterMode(bool)\0"
    "btnGoClicked()\0resourceUpdate(QString)\0"
    "resourceMissing(QString)\0"
    "handleLocatorRequest(QString,QString,QString)\0"
    "loadLocator(QString,QString,QString)\0"
    "locatorDone(QNetworkReply*)\0,\0"
    "downloadProgress(qint64,qint64)\0"
    "onRoomNameEdited()\0"
};

void PageNetGame::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        PageNetGame *_t = static_cast<PageNetGame *>(_o);
        switch (_id) {
        case 0: _t->SetupClicked(); break;
        case 1: _t->askForUpdateRoomName((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 2: _t->toggleReady(); break;
        case 3: _t->locatorReply((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2])),(*reinterpret_cast< const QString(*)>(_a[3]))); break;
        case 4: _t->setRoomName((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 5: _t->setReadyStatus((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 6: _t->setUser((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 7: _t->onUpdateClick(); break;
        case 8: _t->setMasterMode((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 9: _t->btnGoClicked(); break;
        case 10: _t->resourceUpdate((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 11: _t->resourceMissing((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 12: _t->handleLocatorRequest((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2])),(*reinterpret_cast< const QString(*)>(_a[3]))); break;
        case 13: _t->loadLocator((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2])),(*reinterpret_cast< const QString(*)>(_a[3]))); break;
        case 14: _t->locatorDone((*reinterpret_cast< QNetworkReply*(*)>(_a[1]))); break;
        case 15: _t->downloadProgress((*reinterpret_cast< qint64(*)>(_a[1])),(*reinterpret_cast< qint64(*)>(_a[2]))); break;
        case 16: _t->onRoomNameEdited(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData PageNetGame::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject PageNetGame::staticMetaObject = {
    { &AbstractPage::staticMetaObject, qt_meta_stringdata_PageNetGame,
      qt_meta_data_PageNetGame, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &PageNetGame::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *PageNetGame::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *PageNetGame::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_PageNetGame))
        return static_cast<void*>(const_cast< PageNetGame*>(this));
    return AbstractPage::qt_metacast(_clname);
}

int PageNetGame::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = AbstractPage::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 17)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 17;
    }
    return _id;
}

// SIGNAL 0
void PageNetGame::SetupClicked()
{
    QMetaObject::activate(this, &staticMetaObject, 0, 0);
}

// SIGNAL 1
void PageNetGame::askForUpdateRoomName(const QString & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void PageNetGame::toggleReady()
{
    QMetaObject::activate(this, &staticMetaObject, 2, 0);
}

// SIGNAL 3
void PageNetGame::locatorReply(const QString & _t1, const QString & _t2, const QString & _t3)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}
QT_END_MOC_NAMESPACE
