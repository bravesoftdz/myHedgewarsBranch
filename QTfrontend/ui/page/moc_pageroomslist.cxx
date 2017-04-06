/****************************************************************************
** Meta object code from reading C++ file 'pageroomslist.h'
**
** Created: Thu Apr 6 20:32:43 2017
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "pageroomslist.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'pageroomslist.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_PageRoomsList[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      18,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       4,       // signalCount

 // signals: signature, parameters, type, tag, flags
      17,   15,   14,   14, 0x05,
      51,   15,   14,   14, 0x05,
      83,   14,   14,   14, 0x05,
     100,   14,   14,   14, 0x05,

 // slots: signature, parameters, type, tag, flags
     129,   14,   14,   14, 0x0a,
     153,  144,   14,   14, 0x0a,
     174,  170,   14,   14, 0x0a,
     197,   14,   14,   14, 0x08,
     213,   14,   14,   14, 0x08,
     227,   14,   14,   14, 0x08,
     244,   14,   14,   14, 0x08,
     291,  272,   14,   14, 0x08,
     333,   14,   14,   14, 0x08,
     351,   14,   14,   14, 0x08,
     379,  369,   14,   14, 0x08,
     413,   15,   14,   14, 0x08,
     459,   14,   14,   14, 0x08,
     477,   14,   14,   14, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_PageRoomsList[] = {
    "PageRoomsList\0\0,\0askForCreateRoom(QString,QString)\0"
    "askForJoinRoom(QString,QString)\0"
    "askForRoomList()\0askJoinConfirmation(QString)\0"
    "setAdmin(bool)\0nickname\0setUser(QString)\0"
    "cnt\0updateNickCounter(int)\0onCreateClick()\0"
    "onJoinClick()\0onRefreshClick()\0"
    "onJoinConfirmation(QString)\0"
    "logicalIndex,order\0"
    "onSortIndicatorChanged(int,Qt::SortOrder)\0"
    "onFilterChanged()\0saveHeaderState()\0"
    ",password\0onRoomNameChosen(QString,QString)\0"
    "roomSelectionChanged(QModelIndex,QModelIndex)\0"
    "moveSelectionUp()\0moveSelectionDown()\0"
};

void PageRoomsList::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        PageRoomsList *_t = static_cast<PageRoomsList *>(_o);
        switch (_id) {
        case 0: _t->askForCreateRoom((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2]))); break;
        case 1: _t->askForJoinRoom((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2]))); break;
        case 2: _t->askForRoomList(); break;
        case 3: _t->askJoinConfirmation((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 4: _t->setAdmin((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 5: _t->setUser((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 6: _t->updateNickCounter((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 7: _t->onCreateClick(); break;
        case 8: _t->onJoinClick(); break;
        case 9: _t->onRefreshClick(); break;
        case 10: _t->onJoinConfirmation((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 11: _t->onSortIndicatorChanged((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< Qt::SortOrder(*)>(_a[2]))); break;
        case 12: _t->onFilterChanged(); break;
        case 13: _t->saveHeaderState(); break;
        case 14: _t->onRoomNameChosen((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2]))); break;
        case 15: _t->roomSelectionChanged((*reinterpret_cast< const QModelIndex(*)>(_a[1])),(*reinterpret_cast< const QModelIndex(*)>(_a[2]))); break;
        case 16: _t->moveSelectionUp(); break;
        case 17: _t->moveSelectionDown(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData PageRoomsList::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject PageRoomsList::staticMetaObject = {
    { &AbstractPage::staticMetaObject, qt_meta_stringdata_PageRoomsList,
      qt_meta_data_PageRoomsList, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &PageRoomsList::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *PageRoomsList::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *PageRoomsList::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_PageRoomsList))
        return static_cast<void*>(const_cast< PageRoomsList*>(this));
    return AbstractPage::qt_metacast(_clname);
}

int PageRoomsList::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = AbstractPage::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 18)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 18;
    }
    return _id;
}

// SIGNAL 0
void PageRoomsList::askForCreateRoom(const QString & _t1, const QString & _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void PageRoomsList::askForJoinRoom(const QString & _t1, const QString & _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void PageRoomsList::askForRoomList()
{
    QMetaObject::activate(this, &staticMetaObject, 2, 0);
}

// SIGNAL 3
void PageRoomsList::askJoinConfirmation(const QString & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}
QT_END_MOC_NAMESPACE
