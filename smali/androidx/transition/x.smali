.class Landroidx/transition/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx<",
            "Landroid/view/View;",
            "Landroidx/transition/w;",
            ">;"
        }
    .end annotation
.end field

.field final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lb0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb0<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lx;

    invoke-direct {v0}, Lx;-><init>()V

    iput-object v0, p0, Landroidx/transition/x;->a:Lx;

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/transition/x;->b:Landroid/util/SparseArray;

    .line 4
    new-instance v0, Lb0;

    const/16 v1, 0xa

    .line 5
    invoke-direct {v0, v1}, Lb0;-><init>(I)V

    .line 6
    iput-object v0, p0, Landroidx/transition/x;->c:Lb0;

    .line 7
    new-instance v0, Lx;

    invoke-direct {v0}, Lx;-><init>()V

    iput-object v0, p0, Landroidx/transition/x;->d:Lx;

    return-void
.end method
