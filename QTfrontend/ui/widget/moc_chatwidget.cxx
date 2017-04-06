/****************************************************************************
** Meta object code from reading C++ file 'chatwidget.h'
**
** Created: Thu Apr 6 20:32:42 2017
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "chatwidget.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'chatwidget.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_HWChatWidget[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      30,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
      10,       // signalCount

 // signals: signature, parameters, type, tag, flags
      18,   14,   13,   13, 0x05,
      36,   14,   13,   13, 0x05,
      50,   14,   13,   13, 0x05,
      63,   14,   13,   13, 0x05,
      81,   14,   13,   13, 0x05,
      95,   13,   13,   13, 0x05,
     115,  111,   13,   13, 0x05,
     144,  136,   13,   13, 0x05,
     171,  168,   13,   13, 0x05,
     209,  168,   13,   13, 0x05,

 // slots: signature, parameters, type, tag, flags
     256,  247,   13,   13, 0x0a,
     286,  247,   13,   13, 0x0a,
     317,   14,   13,   13, 0x0a,
     358,  342,   13,   13, 0x0a,
     387,  382,   13,   13, 0x0a,
     421,  408,   13,   13, 0x0a,
     450,   13,   13,   13, 0x0a,
     458,   13,   13,   13, 0x0a,
     501,  476,   13,   13, 0x0a,
     547,   13,   13,   13, 0x08,
     563,   13,   13,   13, 0x08,
     571,   13,   13,   13, 0x08,
     580,   13,   13,   13, 0x08,
     593,   13,   13,   13, 0x08,
     602,   13,   13,   13, 0x08,
     613,   13,   13,   13, 0x08,
     624,   13,   13,   13, 0x08,
     641,  635,   13,   13, 0x08,
     681,  676,   13,   13, 0x08,
     703,  699,   13,   13, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_HWChatWidget[] = {
    "HWChatWidget\0\0str\0chatLine(QString)\0"
    "kick(QString)\0ban(QString)\0delegate(QString)\0"
    "info(QString)\0follow(QString)\0cnt\0"
    "nickCountUpdate(int)\0command\0"
    "consoleCommand(QString)\0,,\0"
    "hackMessage1(QString,QString,QString)\0"
    "hackMessage2(QString,QString,QString)\0"
    "nick,str\0onChatAction(QString,QString)\0"
    "onChatMessage(QString,QString)\0"
    "onServerMessage(QString)\0nick,notifyNick\0"
    "nickAdded(QString,bool)\0nick\0"
    "nickRemoved(QString)\0nick,message\0"
    "nickRemoved(QString,QString)\0clear()\0"
    "adminAccess(bool)\0nick,ip,version,roomInfo\0"
    "onPlayerInfo(QString,QString,QString,QString)\0"
    "returnPressed()\0onBan()\0onKick()\0"
    "onDelegate()\0onInfo()\0onFollow()\0"
    "onIgnore()\0onFriend()\0index\0"
    "chatNickDoubleClicked(QModelIndex)\0"
    "link\0linkClicked(QUrl)\0pos\0"
    "nicksContextMenuRequested(QPoint)\0"
};

void HWChatWidget::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        HWChatWidget *_t = static_cast<HWChatWidget *>(_o);
        switch (_id) {
        case 0: _t->chatLine((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 1: _t->kick((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 2: _t->ban((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 3: _t->delegate((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 4: _t->info((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 5: _t->follow((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 6: _t->nickCountUpdate((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 7: _t->consoleCommand((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 8: _t->hackMessage1((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2])),(*reinterpret_cast< const QString(*)>(_a[3]))); break;
        case 9: _t->hackMessage2((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2])),(*reinterpret_cast< const QString(*)>(_a[3]))); break;
        case 10: _t->onChatAction((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2]))); break;
        case 11: _t->onChatMessage((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2]))); break;
        case 12: _t->onServerMessage((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 13: _t->nickAdded((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< bool(*)>(_a[2]))); break;
        case 14: _t->nickRemoved((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 15: _t->nickRemoved((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2]))); break;
        case 16: _t->clear(); break;
        case 17: _t->adminAccess((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 18: _t->onPlayerInfo((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2])),(*reinterpret_cast< const QString(*)>(_a[3])),(*reinterpret_cast< const QString(*)>(_a[4]))); break;
        case 19: _t->returnPressed(); break;
        case 20: _t->onBan(); break;
        case 21: _t->onKick(); break;
        case 22: _t->onDelegate(); break;
        case 23: _t->onInfo(); break;
        case 24: _t->onFollow(); break;
        case 25: _t->onIgnore(); break;
        case 26: _t->onFriend(); break;
        case 27: _t->chatNickDoubleClicked((*reinterpret_cast< const QModelIndex(*)>(_a[1]))); break;
        case 28: _t->linkClicked((*reinterpret_cast< const QUrl(*)>(_a[1]))); break;
        case 29: _t->nicksContextMenuRequested((*reinterpret_cast< const QPoint(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData HWChatWidget::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject HWChatWidget::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_HWChatWidget,
      qt_meta_data_HWChatWidget, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &HWChatWidget::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *HWChatWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *HWChatWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_HWChatWidget))
        return static_cast<void*>(const_cast< HWChatWidget*>(this));
    return QWidget::qt_metacast(_clname);
}

int HWChatWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 30)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 30;
    }
    return _id;
}

// SIGNAL 0
void HWChatWidget::chatLine(const QString & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void HWChatWidget::kick(const QString & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void HWChatWidget::ban(const QString & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void HWChatWidget::delegate(const QString & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}

// SIGNAL 4
void HWChatWidget::info(const QString & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 4, _a);
}

// SIGNAL 5
void HWChatWidget::follow(const QString & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 5, _a);
}

// SIGNAL 6
void HWChatWidget::nickCountUpdate(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 6, _a);
}

// SIGNAL 7
void HWChatWidget::consoleCommand(const QString & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 7, _a);
}

// SIGNAL 8
void HWChatWidget::hackMessage1(const QString & _t1, const QString & _t2, const QString & _t3)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)) };
    QMetaObject::activate(this, &staticMetaObject, 8, _a);
}

// SIGNAL 9
void HWChatWidget::hackMessage2(const QString & _t1, const QString & _t2, const QString & _t3)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)) };
    QMetaObject::activate(this, &staticMetaObject, 9, _a);
}
QT_END_MOC_NAMESPACE
