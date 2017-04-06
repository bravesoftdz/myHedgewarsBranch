/****************************************************************************
** Meta object code from reading C++ file 'pagedrawmap.h'
**
** Created: Thu Apr 6 20:32:43 2017
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "pagedrawmap.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'pagedrawmap.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_PageDrawMap[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      13,   12,   12,   12, 0x08,
      20,   12,   12,   12, 0x08,
      29,   27,   12,   12, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_PageDrawMap[] = {
    "PageDrawMap\0\0load()\0save()\0b\0"
    "pathTypeSwitched(bool)\0"
};

void PageDrawMap::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        PageDrawMap *_t = static_cast<PageDrawMap *>(_o);
        switch (_id) {
        case 0: _t->load(); break;
        case 1: _t->save(); break;
        case 2: _t->pathTypeSwitched((*reinterpret_cast< bool(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData PageDrawMap::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject PageDrawMap::staticMetaObject = {
    { &AbstractPage::staticMetaObject, qt_meta_stringdata_PageDrawMap,
      qt_meta_data_PageDrawMap, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &PageDrawMap::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *PageDrawMap::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *PageDrawMap::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_PageDrawMap))
        return static_cast<void*>(const_cast< PageDrawMap*>(this));
    return AbstractPage::qt_metacast(_clname);
}

int PageDrawMap::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
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
QT_END_MOC_NAMESPACE
