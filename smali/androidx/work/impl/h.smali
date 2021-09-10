.class public Landroidx/work/impl/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/h$d;
    }
.end annotation


# static fields
.field public static a:Ld4;

.field public static b:Ld4;

.field public static c:Ld4;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/work/impl/h$a;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/work/impl/h$a;-><init>(II)V

    sput-object v0, Landroidx/work/impl/h;->a:Ld4;

    .line 2
    new-instance v0, Landroidx/work/impl/h$b;

    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/work/impl/h$b;-><init>(II)V

    sput-object v0, Landroidx/work/impl/h;->b:Ld4;

    .line 3
    new-instance v0, Landroidx/work/impl/h$c;

    const/4 v1, 0x5

    invoke-direct {v0, v2, v1}, Landroidx/work/impl/h$c;-><init>(II)V

    sput-object v0, Landroidx/work/impl/h;->c:Ld4;

    return-void
.end method
