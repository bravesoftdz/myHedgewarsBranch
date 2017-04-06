/****************************************************************************
** Meta object code from reading C++ file 'teamselect.h'
**
** Created: Thu Apr 6 20:32:34 2017
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "teamselect.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'teamselect.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_TeamSelWidget[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      14,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       7,       // signalCount

 // signals: signature, parameters, type, tag, flags
      15,   14,   14,   14, 0x05,
      46,   41,   14,   14, 0x05,
      67,   41,   14,   14, 0x05,
      90,   14,   14,   14, 0x05,
     114,   14,   14,   14, 0x05,
     139,   41,   14,   14, 0x05,
     165,  163,   14,   14, 0x05,

 // slots: signature, parameters, type, tag, flags
     198,   41,   14,   14, 0x0a,
     214,   14,   14,   14, 0x0a,
     234,   14,   14,   14, 0x0a,
     258,   41,   14,   14, 0x0a,
     283,   14,   14,   14, 0x08,
     312,   41,   14,   14, 0x08,
     333,   41,   14,   14, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_TeamSelWidget[] = {
    "TeamSelWidget\0\0setEnabledGameStart(bool)\0"
    "team\0teamWillPlay(HWTeam)\0"
    "teamNotPlaying(HWTeam)\0hhogsNumChanged(HWTeam)\0"
    "teamColorChanged(HWTeam)\0"
    "acceptRequested(HWTeam)\0,\0"
    "requestResource(QString,QString)\0"
    "addTeam(HWTeam)\0changeHHNum(HWTeam)\0"
    "changeTeamColor(HWTeam)\0"
    "changeTeamStatus(HWTeam)\0"
    "pre_changeTeamStatus(HWTeam)\0"
    "hhNumChanged(HWTeam)\0proxyTeamColorChanged(HWTeam)\0"
};

void TeamSelWidget::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        TeamSelWidget *_t = static_cast<TeamSelWidget *>(_o);
        switch (_id) {
        case 0: _t->setEnabledGameStart((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 1: _t->teamWillPlay((*reinterpret_cast< const HWTeam(*)>(_a[1]))); break;
        case 2: _t->teamNotPlaying((*reinterpret_cast< const HWTeam(*)>(_a[1]))); break;
        case 3: _t->hhogsNumChanged((*reinterpret_cast< const HWTeam(*)>(_a[1]))); break;
        case 4: _t->teamColorChanged((*reinterpret_cast< const HWTeam(*)>(_a[1]))); break;
        case 5: _t->acceptRequested((*reinterpret_cast< const HWTeam(*)>(_a[1]))); break;
        case 6: _t->requestResource((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2]))); break;
        case 7: _t->addTeam((*reinterpret_cast< HWTeam(*)>(_a[1]))); break;
        case 8: _t->changeHHNum((*reinterpret_cast< const HWTeam(*)>(_a[1]))); break;
        case 9: _t->changeTeamColor((*reinterpret_cast< const HWTeam(*)>(_a[1]))); break;
        case 10: _t->changeTeamStatus((*reinterpret_cast< HWTeam(*)>(_a[1]))); break;
        case 11: _t->pre_changeTeamStatus((*reinterpret_cast< const HWTeam(*)>(_a[1]))); break;
        case 12: _t->hhNumChanged((*reinterpret_cast< const HWTeam(*)>(_a[1]))); break;
        case 13: _t->proxyTeamColorChanged((*reinterpret_cast< const HWTeam(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData TeamSelWidget::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject TeamSelWidget::staticMetaObject = {
    { &QGroupBox::staticMetaObject, qt_meta_stringdata_TeamSelWidget,
      qt_meta_data_TeamSelWidget, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &TeamSelWidget::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *TeamSelWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *TeamSelWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_TeamSelWidget))
        return static_cast<void*>(const_cast< TeamSelWidget*>(this));
    return QGroupBox::qt_metacast(_clname);
}

int TeamSelWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QGroupBox::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 14)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 14;
    }
    return _id;
}

// SIGNAL 0
void TeamSelWidget::setEnabledGameStart(bool _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void TeamSelWidget::teamWillPlay(const HWTeam & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void TeamSelWidget::teamNotPlaying(const HWTeam & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void TeamSelWidget::hhogsNumChanged(const HWTeam & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}

// SIGNAL 4
void TeamSelWidget::teamColorChanged(const HWTeam & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 4, _a);
}

// SIGNAL 5
void TeamSelWidget::acceptRequested(const HWTeam & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 5, _a);
}

// SIGNAL 6
void TeamSelWidget::requestResource(const QString & _t1, const QString & _t2)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 6, _a);
}
QT_END_MOC_NAMESPACE
