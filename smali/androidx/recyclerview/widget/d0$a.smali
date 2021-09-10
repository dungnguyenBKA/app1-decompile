.class Landroidx/recyclerview/widget/d0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static d:Lk2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk2<",
            "Landroidx/recyclerview/widget/d0$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:Landroidx/recyclerview/widget/RecyclerView$l$c;

.field c:Landroidx/recyclerview/widget/RecyclerView$l$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ll2;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ll2;-><init>(I)V

    sput-object v0, Landroidx/recyclerview/widget/d0$a;->d:Lk2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Landroidx/recyclerview/widget/d0$a;
    .locals 1

    .line 1
    sget-object v0, Landroidx/recyclerview/widget/d0$a;->d:Lk2;

    invoke-interface {v0}, Lk2;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/d0$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/recyclerview/widget/d0$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/d0$a;-><init>()V

    :cond_0
    return-object v0
.end method

.method static b(Landroidx/recyclerview/widget/d0$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroidx/recyclerview/widget/d0$a;->a:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/recyclerview/widget/d0$a;->b:Landroidx/recyclerview/widget/RecyclerView$l$c;

    .line 3
    iput-object v0, p0, Landroidx/recyclerview/widget/d0$a;->c:Landroidx/recyclerview/widget/RecyclerView$l$c;

    .line 4
    sget-object v0, Landroidx/recyclerview/widget/d0$a;->d:Lk2;

    invoke-interface {v0, p0}, Lk2;->a(Ljava/lang/Object;)Z

    return-void
.end method
