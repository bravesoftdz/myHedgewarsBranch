/****************************************************************************
** Meta object code from reading C++ file 'teamselhelper.h'
**
** Created: Thu Apr 6 20:32:39 2017
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "teamselhelper.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'teamselhelper.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_TeamLabel[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       2,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: signature, parameters, type, tag, flags
      21,   11,   10,   10, 0x05,

 // slots: signature, parameters, type, tag, flags
      44,   10,   10,   10, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_TeamLabel[] = {
    "TeamLabel\0\0team_name\0teamActivated(QString)\0"
    "teamButtonClicked()\0"
};

void TeamLabel::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        TeamLabel *_t = static_cast<TeamLabel *>(_o);
        switch (_id) {
        case 0: _t->teamActivated((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 1: _t->teamButtonClicked(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData TeamLabel::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject TeamLabel::staticMetaObject = {
    { &QLabel::staticMetaObject, qt_meta_stringdata_TeamLabel,
      qt_meta_data_TeamLabel, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &TeamLabel::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *TeamLabel::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *TeamLabel::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_TeamLabel))
        return static_cast<void*>(const_cast< TeamLabel*>(this));
    return QLabel::qt_metacast(_clname);
}

int TeamLabel::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QLabel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 2)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    }
    return _id;
}

// SIGNAL 0
void TeamLabel::teamActivated(QString _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
static const uint qt_meta_data_TeamShowWidget[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       8,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // signals: signature, parameters, type, tag, flags
      16,   15,   15,   15, 0x05,
      42,   15,   15,   15, 0x05,
      62,   15,   15,   15, 0x05,

 // slots: signature, parameters, type, tag, flags
      93,   87,   15,   15, 0x0a,
     114,   15,   15,   15, 0x2a,
     132,   15,   15,   15, 0x0a,
     147,   15,   15,   15, 0x08,
     162,   87,   15,   15, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_TeamShowWidget[] = {
    "TeamShowWidget\0\0teamStatusChanged(HWTeam)\0"
    "hhNmChanged(HWTeam)\0teamColorChanged(HWTeam)\0"
    "color\0changeTeamColor(int)\0changeTeamColor()\0"
    "hhNumChanged()\0activateTeam()\0"
    "onColorChanged(int)\0"
};

void TeamShowWidget::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        TeamShowWidget *_t = static_cast<TeamShowWidget *>(_o);
        switch (_id) {
        case 0: _t->teamStatusChanged((*reinterpret_cast< const HWTeam(*)>(_a[1]))); break;
        case 1: _t->hhNmChanged((*reinterpret_cast< const HWTeam(*)>(_a[1]))); break;
        case 2: _t->teamColorChanged((*reinterpret_cast< const HWTeam(*)>(_a[1]))); break;
        case 3: _t->changeTeamColor((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 4: _t->changeTeamColor(); break;
        case 5: _t->hhNumChanged(); break;
        case 6: _t->activateTeam(); break;
        case 7: _t->onColorChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData TeamShowWidget::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject TeamShowWidget::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_TeamShowWidget,
      qt_meta_data_TeamShowWidget, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &TeamShowWidget::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *TeamShowWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *TeamShowWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_TeamShowWidget))
        return static_cast<void*>(const_cast< TeamShowWidget*>(this));
    return QWidget::qt_metacast(_clname);
}

int TeamShowWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 8)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 8;
    }
    return _id;
}

// SIGNAL 0
void TeamShowWidget::teamStatusChanged(const HWTeam & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void TeamShowWidget::hhNmChanged(const HWTeam & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void TeamShowWidget::teamColorChanged(const HWTeam & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}
QT_END_MOC_NAMESPACE
