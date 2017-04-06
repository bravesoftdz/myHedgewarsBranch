/****************************************************************************
** Meta object code from reading C++ file 'pagedata.h'
**
** Created: Thu Apr 6 20:32:45 2017
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "pagedata.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'pagedata.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_PageDataDownload[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
       7,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      18,   17,   17,   17, 0x0a,
      34,   30,   17,   17, 0x08,
      48,   17,   17,   17, 0x08,
      65,   17,   17,   17, 0x08,
      84,   82,   17,   17, 0x08,
     116,   17,   17,   17, 0x08,
     134,   17,   17,   17, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_PageDataDownload[] = {
    "PageDataDownload\0\0fetchList()\0url\0"
    "request(QUrl)\0pageDownloaded()\0"
    "fileDownloaded()\0,\0downloadProgress(qint64,qint64)\0"
    "openPackagesDir()\0onPageLeave()\0"
};

void PageDataDownload::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        PageDataDownload *_t = static_cast<PageDataDownload *>(_o);
        switch (_id) {
        case 0: _t->fetchList(); break;
        case 1: _t->request((*reinterpret_cast< const QUrl(*)>(_a[1]))); break;
        case 2: _t->pageDownloaded(); break;
        case 3: _t->fileDownloaded(); break;
        case 4: _t->downloadProgress((*reinterpret_cast< qint64(*)>(_a[1])),(*reinterpret_cast< qint64(*)>(_a[2]))); break;
        case 5: _t->openPackagesDir(); break;
        case 6: _t->onPageLeave(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData PageDataDownload::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject PageDataDownload::staticMetaObject = {
    { &AbstractPage::staticMetaObject, qt_meta_stringdata_PageDataDownload,
      qt_meta_data_PageDataDownload, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &PageDataDownload::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *PageDataDownload::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *PageDataDownload::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_PageDataDownload))
        return static_cast<void*>(const_cast< PageDataDownload*>(this));
    return AbstractPage::qt_metacast(_clname);
}

int PageDataDownload::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = AbstractPage::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 7)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 7;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
