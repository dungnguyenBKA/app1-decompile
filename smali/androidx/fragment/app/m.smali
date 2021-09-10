.class public abstract Landroidx/fragment/app/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/m$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/m$a;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:Z

.field i:Z

.field j:Ljava/lang/String;

.field k:I

.field l:Ljava/lang/CharSequence;

.field m:I

.field n:Ljava/lang/CharSequence;

.field o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field q:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/m;->i:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/fragment/app/m;->q:Z

    return-void
.end method


# virtual methods
.method public b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/m;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/m;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method public c(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/m;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, p1, p2, v1}, Landroidx/fragment/app/m;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method d(Landroidx/fragment/app/m$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget v0, p0, Landroidx/fragment/app/m;->b:I

    iput v0, p1, Landroidx/fragment/app/m$a;->c:I

    .line 3
    iget v0, p0, Landroidx/fragment/app/m;->c:I

    iput v0, p1, Landroidx/fragment/app/m$a;->d:I

    .line 4
    iget v0, p0, Landroidx/fragment/app/m;->d:I

    iput v0, p1, Landroidx/fragment/app/m$a;->e:I

    .line 5
    iget v0, p0, Landroidx/fragment/app/m;->e:I

    iput v0, p1, Landroidx/fragment/app/m$a;->f:I

    return-void
.end method

.method public e(Ljava/lang/String;)Landroidx/fragment/app/m;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/m;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/m;->h:Z

    .line 3
    iput-object p1, p0, Landroidx/fragment/app/m;->j:Ljava/lang/String;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract f()I
.end method

.method public abstract g()I
.end method

.method abstract h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
.end method

.method public abstract i(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/m;
.end method

.method public abstract j(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/m;
.end method

.method public k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/m;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/m;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must use non-zero containerViewId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l(II)Landroidx/fragment/app/m;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/fragment/app/m;->b:I

    .line 2
    iput p2, p0, Landroidx/fragment/app/m;->c:I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Landroidx/fragment/app/m;->d:I

    .line 4
    iput p1, p0, Landroidx/fragment/app/m;->e:I

    return-object p0
.end method

.method public abstract m(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/m;
.end method
