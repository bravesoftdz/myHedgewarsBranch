/****************************************************************************
** Meta object code from reading C++ file 'pagevideos.h'
**
** Created: Thu Apr 6 20:32:43 2017
**      by: The Qt Meta Object Compiler version 63 (Qt 4.8.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "pagevideos.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'pagevideos.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_PageVideos[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      12,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      20,   12,   11,   11, 0x08,
      49,   43,   11,   11, 0x08,
      82,   71,   11,   11, 0x08,
     109,   71,   11,   11, 0x08,
     130,   11,   11,   11, 0x08,
     151,   11,   11,   11, 0x08,
     170,   11,   11,   11, 0x08,
     192,   11,   11,   11, 0x08,
     219,  214,   11,   11, 0x08,
     243,   11,   11,   11, 0x08,
     282,  261,   11,   11, 0x08,
     312,   11,   11,   11, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_PageVideos[] = {
    "PageVideos\0\0success\0encodingFinished(bool)\0"
    "value\0updateProgress(float)\0row,column\0"
    "cellDoubleClicked(int,int)\0"
    "cellChanged(int,int)\0currentCellChanged()\0"
    "playSelectedFile()\0deleteSelectedFiles()\0"
    "openVideosDirectory()\0path\0"
    "updateFileList(QString)\0uploadToYouTube()\0"
    "bytesSent,bytesTotal\0uploadProgress(qint64,qint64)\0"
    "uploadFinished()\0"
};

void PageVideos::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        PageVideos *_t = static_cast<PageVideos *>(_o);
        switch (_id) {
        case 0: _t->encodingFinished((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 1: _t->updateProgress((*reinterpret_cast< float(*)>(_a[1]))); break;
        case 2: _t->cellDoubleClicked((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 3: _t->cellChanged((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 4: _t->currentCellChanged(); break;
        case 5: _t->playSelectedFile(); break;
        case 6: _t->deleteSelectedFiles(); break;
        case 7: _t->openVideosDirectory(); break;
        case 8: _t->updateFileList((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 9: _t->uploadToYouTube(); break;
        case 10: _t->uploadProgress((*reinterpret_cast< qint64(*)>(_a[1])),(*reinterpret_cast< qint64(*)>(_a[2]))); break;
        case 11: _t->uploadFinished(); break;
        default: ;
        }
    }
}

const QMetaObjectExtraData PageVideos::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject PageVideos::staticMetaObject = {
    { &AbstractPage::staticMetaObject, qt_meta_stringdata_PageVideos,
      qt_meta_data_PageVideos, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &PageVideos::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *PageVideos::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *PageVideos::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_PageVideos))
        return static_cast<void*>(const_cast< PageVideos*>(this));
    return AbstractPage::qt_metacast(_clname);
}

int PageVideos::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = AbstractPage::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 12)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 12;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
