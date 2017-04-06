/****************************************************************************
** Meta object code from reading C++ file 'pagenetserver.h'
**
** Created: Thu Apr 6 20:32:46 2017
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "pagenetserver.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'pagenetserver.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_PageNetServer[] = {

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
      15,   14,   14,   14, 0x08,
      32,   14,   14,   14, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_PageNetServer[] = {
    "PageNetServer\0\0setDefaultPort()\0"
    "copyUrl()\0"
};

void PageNetServer::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        PageNetServer *_t = static_cast<PageNetServer *>(_o);
        switch (_id) {
        case 0: _t->setDefaultPort(); break;
        case 1: _t->copyUrl(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObjectExtraData PageNetServer::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject PageNetServer::staticMetaObject = {
    { &AbstractPage::staticMetaObject, qt_meta_stringdata_PageNetServer,
      qt_meta_data_PageNetServer, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &PageNetServer::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *PageNetServer::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *PageNetServer::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_PageNetServer))
        return static_cast<void*>(const_cast< PageNetServer*>(this));
    return AbstractPage::qt_metacast(_clname);
}

int PageNetServer::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = AbstractPage::qt_metacall(_c, _id, _a);
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
