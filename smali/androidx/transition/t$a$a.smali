.class Landroidx/transition/t$a$a;
.super Landroidx/transition/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/t$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lx;

.field final synthetic b:Landroidx/transition/t$a;


# direct methods
.method constructor <init>(Landroidx/transition/t$a;Lx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/transition/t$a$a;->b:Landroidx/transition/t$a;

    iput-object p2, p0, Landroidx/transition/t$a$a;->a:Lx;

    invoke-direct {p0}, Landroidx/transition/s;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroidx/transition/Transition;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/transition/t$a$a;->a:Lx;

    iget-object v1, p0, Landroidx/transition/t$a$a;->b:Landroidx/transition/t$a;

    iget-object v1, v1, Landroidx/transition/t$a;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Le0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->E(Landroidx/transition/Transition$d;)Landroidx/transition/Transition;

    return-void
.end method
