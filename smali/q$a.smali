.class Lq$a;
.super Lj3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field final synthetic c:Lq;


# direct methods
.method constructor <init>(Lq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq$a;->c:Lq;

    invoke-direct {p0}, Lj3;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lq$a;->a:Z

    .line 3
    iput p1, p0, Lq$a;->b:I

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget p1, p0, Lq$a;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lq$a;->b:I

    iget-object v0, p0, Lq$a;->c:Lq;

    iget-object v0, v0, Lq;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lq$a;->c:Lq;

    iget-object p1, p1, Lq;->d:Li3;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Li3;->b(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lq$a;->b:I

    .line 5
    iput-boolean p1, p0, Lq$a;->a:Z

    .line 6
    iget-object p1, p0, Lq$a;->c:Lq;

    invoke-virtual {p1}, Lq;->b()V

    :cond_1
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lq$a;->a:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lq$a;->a:Z

    .line 3
    iget-object p1, p0, Lq$a;->c:Lq;

    iget-object p1, p1, Lq;->d:Li3;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Li3;->c(Landroid/view/View;)V

    :cond_1
    return-void
.end method
