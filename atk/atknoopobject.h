#if defined(ATK_DISABLE_SINGLE_INCLUDES) && !defined (__ATK_H_INSIDE__) && !defined (ATK_COMPILATION)
#error "Only <atk/atk.h> can be included directly."
#endif

#include <atk/atkversion.h>

#ifndef __ATK_NO_OP_OBJECT_H__
#define __ATK_NO_OP_OBJECT_H__



#define ATK_TYPE_NO_OP_OBJECT                (atk_no_op_object_get_type ())
#define ATK_NO_OP_OBJECT(obj)                ( ((obj), ATK_TYPE_NO_OP_OBJECT, AtkNoOpObject))
#define ATK_NO_OP_OBJECT_CLASS(klass)        ( ((klass), ATK_TYPE_NO_OP_OBJECT, AtkNoOpObjectClass))
#define ATK_IS_NO_OP_OBJECT(obj)             ( ((obj), ATK_TYPE_NO_OP_OBJECT))
#define ATK_IS_NO_OP_OBJECT_CLASS(klass)     ( ((klass), ATK_TYPE_NO_OP_OBJECT))
#define ATK_NO_OP_OBJECT_GET_CLASS(obj)      (G_TYPE_INSTANCE_GET_CLASS ((obj), ATK_TYPE_NO_OP_OBJECT, AtkNoOpObjectClass))

typedef struct _AtkNoOpObject                   AtkNoOpObject;
typedef struct _AtkNoOpObjectClass              AtkNoOpObjectClass;

struct _AtkNoOpObject
{
  AtkObject     parent;
};

ATK_AVAILABLE_IN_ALL
long unsigned int atk_no_op_object_get_type (void);

struct _AtkNoOpObjectClass
{
  AtkObjectClass parent_class;
};

ATK_AVAILABLE_IN_ALL
AtkObject *atk_no_op_object_new (GObject  *obj);



#endif /* __ATK_NO_OP_OBJECT_H__ */
