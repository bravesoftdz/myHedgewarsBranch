/****************************************************************************
** Meta object code from reading C++ file 'netudpwidget.h'
**
** Created: Thu Apr 6 20:32:34 2017
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "netudpwidget.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'netudpwidget.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_HWNetUdpModel[] = {

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
      15,   14,   14,   14, 0x0a,
      28,   14,   14,   14, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_HWNetUdpModel[] = {
    "HWNetUdpModel\0\0updateList()\0onClientRead()\0"
};

void HWNetUdpModel::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        HWNetUdpModel *_t = static_cast<HWNetUdpModel *>(_o);
        switch (_id) {
        case 0: _t->updateList(); break;
        case 1: _t->onClientRead(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObjectExtraData HWNetUdpModel::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject HWNetUdpModel::staticMetaObject = {
    { &HWNetServersModel::staticMetaObject, qt_meta_stringdata_HWNetUdpModel,
      qt_meta_data_HWNetUdpModel, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &HWNetUdpModel::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *HWNetUdpModel::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *HWNetUdpModel::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_HWNetUdpModel))
        return static_cast<void*>(const_cast< HWNetUdpModel*>(this));
    return HWNetServersModel::qt_metacast(_clname);
}

int HWNetUdpModel::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = HWNetServersModel::qt_metacall(_c, _id, _a);
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
