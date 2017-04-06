/****************************************************************************
** Meta object code from reading C++ file 'pagenet.h'
**
** Created: Thu Apr 6 20:32:46 2017
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "pagenet.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'pagenet.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_PageNet[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: signature, parameters, type, tag, flags
      19,    9,    8,    8, 0x05,

 // slots: signature, parameters, type, tag, flags
      51,    8,    8,    8, 0x0a,
      71,    8,    8,    8, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_PageNet[] = {
    "PageNet\0\0host,port\0connectClicked(QString,quint16)\0"
    "updateServersList()\0slotConnect()\0"
};

void PageNet::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        PageNet *_t = static_cast<PageNet *>(_o);
        switch (_id) {
        case 0: _t->connectClicked((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< quint16(*)>(_a[2]))); break;
        case 1: _t->updateServersList(); break;
        case 2: _t->slotConnect(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData PageNet::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject PageNet::staticMetaObject = {
    { &AbstractPage::staticMetaObject, qt_meta_stringdata_PageNet,
      qt_meta_data_PageNet, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &PageNet::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *PageNet::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *PageNet::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_PageNet))
        return static_cast<void*>(const_cast< PageNet*>(this));
    return AbstractPage::qt_metacast(_clname);
}

int PageNet::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = AbstractPage::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    }
    return _id;
}

// SIGNAL 0
void PageNet::connectClicked(const QString & _t1, quint16 _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_END_MOC_NAMESPACE
