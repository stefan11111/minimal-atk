#ifndef __ATK_PRIVATE_H__
#define __ATK_PRIVATE_H__

#if defined(ATK_DISABLE_SINGLE_INCLUDES) && !defined (__ATK_H_INSIDE__) && !defined (ATK_COMPILATION)
#error "Only <atk/atk.h> can be included directly."
#endif

G_BEGIN_DECLS

void      _gettext_initialization (void);
void      _compact_name (gchar *name);

G_END_DECLS

#endif /* __ATK_PRIVATE_H__ */
