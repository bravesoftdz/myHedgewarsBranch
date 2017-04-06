/****************************************************************************
** Meta object code from reading C++ file 'pageadmin.h'
**
** Created: Thu Apr 6 20:32:47 2017
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "pageadmin.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'pageadmin.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_PageAdmin[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      17,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       9,       // signalCount

 // signals: signature, parameters, type, tag, flags
      15,   11,   10,   10, 0x05,
      44,   11,   10,   10, 0x05,
      79,   73,   10,   10, 0x05,
      96,   10,   10,   10, 0x05,
     112,   10,   10,   10, 0x05,
     133,   10,   10,   10, 0x05,
     151,   10,   10,   10, 0x05,
     188,  170,   10,   10, 0x05,
     235,  215,   10,   10, 0x05,

 // slots: signature, parameters, type, tag, flags
     264,   11,   10,   10, 0x0a,
     290,   11,   10,   10, 0x0a,
     316,   73,   10,   10, 0x0a,
     335,  330,   10,   10, 0x0a,
     360,   10,   10,   10, 0x08,
     372,   10,   10,   10, 0x08,
     387,   10,   10,   10, 0x08,
     405,   10,   10,   10, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_PageAdmin[] = {
    "PageAdmin\0\0str\0setServerMessageNew(QString)\0"
    "setServerMessageOld(QString)\0proto\0"
    "setProtocol(int)\0askServerVars()\0"
    "clearAccountsCache()\0bansListRequest()\0"
    "removeBan(QString)\0ip,reason,seconds\0"
    "banIP(QString,QString,int)\0"
    "nick,reason,seconds\0banNick(QString,QString,int)\0"
    "serverMessageNew(QString)\0"
    "serverMessageOld(QString)\0protocol(int)\0"
    "bans\0setBansList(QStringList)\0smChanged()\0"
    "onAddClicked()\0onRemoveClicked()\0"
    "onRefreshClicked()\0"
};

void PageAdmin::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        PageAdmin *_t = static_cast<PageAdmin *>(_o);
        switch (_id) {
        case 0: _t->setServerMessageNew((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 1: _t->setServerMessageOld((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 2: _t->setProtocol((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 3: _t->askServerVars(); break;
        case 4: _t->clearAccountsCache(); break;
        case 5: _t->bansListRequest(); break;
        case 6: _t->removeBan((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 7: _t->banIP((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2])),(*reinterpret_cast< int(*)>(_a[3]))); break;
        case 8: _t->banNick((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2])),(*reinterpret_cast< int(*)>(_a[3]))); break;
        case 9: _t->serverMessageNew((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 10: _t->serverMessageOld((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 11: _t->protocol((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 12: _t->setBansList((*reinterpret_cast< const QStringList(*)>(_a[1]))); break;
        case 13: _t->smChanged(); break;
        case 14: _t->onAddClicked(); break;
        case 15: _t->onRemoveClicked(); break;
        case 16: _t->onRefreshClicked(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData PageAdmin::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject PageAdmin::staticMetaObject = {
    { &AbstractPage::staticMetaObject, qt_meta_stringdata_PageAdmin,
      qt_meta_data_PageAdmin, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &PageAdmin::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *PageAdmin::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *PageAdmin::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_PageAdmin))
        return static_cast<void*>(const_cast< PageAdmin*>(this));
    return AbstractPage::qt_metacast(_clname);
}

int PageAdmin::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
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
void PageAdmin::setServerMessageNew(const QString & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void PageAdmin::setServerMessageOld(const QString & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void PageAdmin::setProtocol(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void PageAdmin::askServerVars()
{
    QMetaObject::activate(this, &staticMetaObject, 3, 0);
}

// SIGNAL 4
void PageAdmin::clearAccountsCache()
{
    QMetaObject::activate(this, &staticMetaObject, 4, 0);
}

// SIGNAL 5
void PageAdmin::bansListRequest()
{
    QMetaObject::activate(this, &staticMetaObject, 5, 0);
}

// SIGNAL 6
void PageAdmin::removeBan(const QString & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 6, _a);
}

// SIGNAL 7
void PageAdmin::banIP(const QString & _t1, const QString & _t2, int _t3)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)) };
    QMetaObject::activate(this, &staticMetaObject, 7, _a);
}

// SIGNAL 8
void PageAdmin::banNick(const QString & _t1, const QString & _t2, int _t3)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)) };
    QMetaObject::activate(this, &staticMetaObject, 8, _a);
}
QT_END_MOC_NAMESPACE
