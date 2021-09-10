.class Landroidx/appcompat/app/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/reflect/Field;

.field private static b:Z

.field private static c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static d:Z

.field private static e:Ljava/lang/reflect/Field;

.field private static f:Z

.field private static g:Ljava/lang/reflect/Field;

.field private static h:Z


# direct methods
.method static a(Landroid/content/res/Resources;)V
    .locals 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x18

    const-string v2, "mDrawableCache"

    const/4 v3, 0x0

    const-string v4, "ResourcesFlusher"

    const/4 v5, 0x1

    if-lt v0, v1, :cond_6

    .line 2
    sget-boolean v0, Landroidx/appcompat/app/p;->h:Z

    if-nez v0, :cond_1

    .line 3
    :try_start_0
    const-class v0, Landroid/content/res/Resources;

    const-string v1, "mResourcesImpl"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/p;->g:Ljava/lang/reflect/Field;

    .line 4
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not retrieve Resources#mResourcesImpl field"

    .line 5
    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :goto_0
    sput-boolean v5, Landroidx/appcompat/app/p;->h:Z

    .line 7
    :cond_1
    sget-object v0, Landroidx/appcompat/app/p;->g:Ljava/lang/reflect/Field;

    if-nez v0, :cond_2

    goto/16 :goto_8

    .line 8
    :cond_2
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string v0, "Could not retrieve value from Resources#mResourcesImpl"

    .line 9
    invoke-static {v4, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, v3

    :goto_1
    if-nez p0, :cond_3

    goto/16 :goto_8

    .line 10
    :cond_3
    sget-boolean v0, Landroidx/appcompat/app/p;->b:Z

    if-nez v0, :cond_4

    .line 11
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/p;->a:Ljava/lang/reflect/Field;

    .line 12
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "Could not retrieve ResourcesImpl#mDrawableCache field"

    .line 13
    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    :goto_2
    sput-boolean v5, Landroidx/appcompat/app/p;->b:Z

    .line 15
    :cond_4
    sget-object v0, Landroidx/appcompat/app/p;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_5

    .line 16
    :try_start_3
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    const-string v0, "Could not retrieve value from ResourcesImpl#mDrawableCache"

    .line 17
    invoke-static {v4, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_3
    if-eqz v3, :cond_c

    .line 18
    invoke-static {v3}, Landroidx/appcompat/app/p;->b(Ljava/lang/Object;)V

    goto :goto_8

    :cond_6
    const/16 v1, 0x17

    const-string v6, "Could not retrieve Resources#mDrawableCache field"

    const-string v7, "Could not retrieve value from Resources#mDrawableCache"

    if-lt v0, v1, :cond_a

    .line 19
    sget-boolean v0, Landroidx/appcompat/app/p;->b:Z

    if-nez v0, :cond_7

    .line 20
    :try_start_4
    const-class v0, Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/p;->a:Ljava/lang/reflect/Field;

    .line 21
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 22
    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    :goto_4
    sput-boolean v5, Landroidx/appcompat/app/p;->b:Z

    .line 24
    :cond_7
    sget-object v0, Landroidx/appcompat/app/p;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_8

    .line 25
    :try_start_5
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception p0

    .line 26
    invoke-static {v4, v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_5
    if-nez v3, :cond_9

    goto :goto_8

    .line 27
    :cond_9
    invoke-static {v3}, Landroidx/appcompat/app/p;->b(Ljava/lang/Object;)V

    goto :goto_8

    :cond_a
    const/16 v1, 0x15

    if-lt v0, v1, :cond_c

    .line 28
    sget-boolean v0, Landroidx/appcompat/app/p;->b:Z

    if-nez v0, :cond_b

    .line 29
    :try_start_6
    const-class v0, Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/p;->a:Ljava/lang/reflect/Field;

    .line 30
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_6
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    .line 31
    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    :goto_6
    sput-boolean v5, Landroidx/appcompat/app/p;->b:Z

    .line 33
    :cond_b
    sget-object v0, Landroidx/appcompat/app/p;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_c

    .line 34
    :try_start_7
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_7

    move-object v3, p0

    goto :goto_7

    :catch_7
    move-exception p0

    .line 35
    invoke-static {v4, v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    if-eqz v3, :cond_c

    .line 36
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    :cond_c
    :goto_8
    return-void
.end method

.method private static b(Ljava/lang/Object;)V
    .locals 4

    .line 1
    sget-boolean v0, Landroidx/appcompat/app/p;->d:Z

    const/4 v1, 0x1

    const-string v2, "ResourcesFlusher"

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "android.content.res.ThemedResourceCache"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/p;->c:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Could not find ThemedResourceCache class"

    .line 3
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    :goto_0
    sput-boolean v1, Landroidx/appcompat/app/p;->d:Z

    .line 5
    :cond_0
    sget-object v0, Landroidx/appcompat/app/p;->c:Ljava/lang/Class;

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    sget-boolean v3, Landroidx/appcompat/app/p;->f:Z

    if-nez v3, :cond_2

    :try_start_1
    const-string v3, "mUnthemedEntries"

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/p;->e:Ljava/lang/reflect/Field;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v3, "Could not retrieve ThemedResourceCache#mUnthemedEntries field"

    .line 9
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    :goto_1
    sput-boolean v1, Landroidx/appcompat/app/p;->f:Z

    .line 11
    :cond_2
    sget-object v0, Landroidx/appcompat/app/p;->e:Ljava/lang/reflect/Field;

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x0

    .line 12
    :try_start_2
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/LongSparseArray;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, p0

    goto :goto_2

    :catch_2
    move-exception p0

    const-string v0, "Could not retrieve value from ThemedResourceCache#mUnthemedEntries"

    .line 13
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    :cond_4
    return-void
.end method
