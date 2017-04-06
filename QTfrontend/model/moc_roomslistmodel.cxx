/****************************************************************************
** Meta object code from reading C++ file 'roomslistmodel.h'
**
** Created: Thu Apr 6 20:32:31 2017
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "roomslistmodel.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'roomslistmodel.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_RoomsListModel[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       5,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      22,   16,   15,   15, 0x0a,
      53,   48,   15,   15, 0x0a,
      79,   74,   15,   15, 0x0a,
     109,   99,   15,   15, 0x0a,
     145,   74,  141,   15, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_RoomsListModel[] = {
    "RoomsListModel\0\0rooms\0setRoomsList(QStringList)\0"
    "info\0addRoom(QStringList)\0name\0"
    "removeRoom(QString)\0name,info\0"
    "updateRoom(QString,QStringList)\0int\0"
    "rowOfRoom(QString)\0"
};

void RoomsListModel::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        RoomsListModel *_t = static_cast<RoomsListModel *>(_o);
        switch (_id) {
        case 0: _t->setRoomsList((*reinterpret_cast< const QStringList(*)>(_a[1]))); break;
        case 1: _t->addRoom((*reinterpret_cast< const QStringList(*)>(_a[1]))); break;
        case 2: _t->removeRoom((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 3: _t->updateRoom((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QStringList(*)>(_a[2]))); break;
        case 4: { int _r = _t->rowOfRoom((*reinterpret_cast< const QString(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = _r; }  break;
        default: ;
        }
    }
}

const QMetaObjectExtraData RoomsListModel::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject RoomsListModel::staticMetaObject = {
    { &QAbstractTableModel::staticMetaObject, qt_meta_stringdata_RoomsListModel,
      qt_meta_data_RoomsListModel, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &RoomsListModel::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *RoomsListModel::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *RoomsListModel::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_RoomsListModel))
        return static_cast<void*>(const_cast< RoomsListModel*>(this));
    return QAbstractTableModel::qt_metacast(_clname);
}

int RoomsListModel::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QAbstractTableModel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 5)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
