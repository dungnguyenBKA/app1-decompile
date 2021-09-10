.class public Lxl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z

.field public static final b:Z

.field public static final c:Z

.field public static final d:Z

.field public static final e:Z

.field public static final f:Z

.field public static final g:Z

.field public static final h:Z

.field public static final i:Z

.field public static final j:Z

.field public static final k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x19

    if-lt v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    sput-boolean v3, Lxl;->a:Z

    if-nez v3, :cond_2

    const/16 v3, 0x18

    if-lt v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    .line 2
    :goto_2
    sput-boolean v3, Lxl;->b:Z

    if-nez v3, :cond_4

    const/16 v3, 0x17

    if-lt v0, v3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v3, 0x1

    .line 3
    :goto_4
    sput-boolean v3, Lxl;->c:Z

    if-nez v3, :cond_5

    const/16 v3, 0x15

    if-lt v0, v3, :cond_6

    :cond_5
    const/4 v1, 0x1

    .line 4
    :cond_6
    sput-boolean v1, Lxl;->d:Z

    .line 5
    sput-boolean v2, Lxl;->e:Z

    .line 6
    sput-boolean v2, Lxl;->f:Z

    .line 7
    sput-boolean v2, Lxl;->g:Z

    .line 8
    sput-boolean v2, Lxl;->h:Z

    .line 9
    sput-boolean v2, Lxl;->i:Z

    .line 10
    sput-boolean v2, Lxl;->j:Z

    .line 11
    sput-boolean v2, Lxl;->k:Z

    return-void
.end method
