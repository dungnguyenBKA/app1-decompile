.class public Lu90;
.super Ll90;
.source "SourceFile"


# instance fields
.field private final a:Ln90;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx90;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lia0;

.field private d:Lka0;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^[a-zA-Z0-9 ]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lm90;Ln90;)V
    .locals 2

    invoke-direct {p0}, Ll90;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu90;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lu90;->e:Z

    iput-boolean v0, p0, Lu90;->f:Z

    iput-object p2, p0, Lu90;->a:Ln90;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu90;->g:Ljava/lang/String;

    .line 1
    new-instance v0, Lia0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lia0;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lu90;->c:Lia0;

    .line 2
    invoke-virtual {p2}, Ln90;->b()Lo90;

    move-result-object v0

    sget-object v1, Lo90;->c:Lo90;

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Ln90;->b()Lo90;

    move-result-object v0

    sget-object v1, Lo90;->e:Lo90;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lma0;

    invoke-virtual {p2}, Ln90;->e()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2}, Ln90;->f()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lma0;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lla0;

    invoke-virtual {p2}, Ln90;->i()Landroid/webkit/WebView;

    move-result-object p2

    invoke-direct {v0, p2}, Lla0;-><init>(Landroid/webkit/WebView;)V

    :goto_1
    iput-object v0, p0, Lu90;->d:Lka0;

    invoke-virtual {v0}, Lka0;->a()V

    invoke-static {}, Lv90;->a()Lv90;

    move-result-object p2

    invoke-virtual {p2, p0}, Lv90;->b(Lu90;)V

    iget-object p2, p0, Lu90;->d:Lka0;

    .line 3
    invoke-static {}, Laa0;->a()Laa0;

    move-result-object v0

    invoke-virtual {p2}, Lka0;->i()Landroid/webkit/WebView;

    move-result-object p2

    invoke-virtual {p1}, Lm90;->b()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Laa0;->f(Landroid/webkit/WebView;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    iget-boolean v0, p0, Lu90;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lu90;->c:Lia0;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1
    iget-boolean v0, p0, Lu90;->f:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lu90;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lu90;->f:Z

    .line 3
    iget-object v0, p0, Lu90;->d:Lka0;

    .line 4
    invoke-static {}, Laa0;->a()Laa0;

    move-result-object v1

    invoke-virtual {v0}, Lka0;->i()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v1, v0}, Laa0;->b(Landroid/webkit/WebView;)V

    .line 5
    invoke-static {}, Lv90;->a()Lv90;

    move-result-object v0

    invoke-virtual {v0, p0}, Lv90;->f(Lu90;)V

    .line 6
    iget-object v0, p0, Lu90;->d:Lka0;

    .line 7
    invoke-virtual {v0}, Lka0;->g()V

    const/4 v0, 0x0

    iput-object v0, p0, Lu90;->d:Lka0;

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 3

    iget-boolean v0, p0, Lu90;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "AdView is null"

    invoke-static {p1, v0}, Landroidx/core/app/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lu90;->f()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_1

    return-void

    .line 1
    :cond_1
    new-instance v0, Lia0;

    invoke-direct {v0, p1}, Lia0;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lu90;->c:Lia0;

    .line 2
    iget-object v0, p0, Lu90;->d:Lka0;

    .line 3
    invoke-virtual {v0}, Lka0;->j()V

    .line 4
    invoke-static {}, Lv90;->a()Lv90;

    move-result-object v0

    invoke-virtual {v0}, Lv90;->c()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu90;

    if-eq v1, p0, :cond_2

    invoke-virtual {v1}, Lu90;->f()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_2

    iget-object v1, v1, Lu90;->c:Lia0;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public d()V
    .locals 3

    iget-boolean v0, p0, Lu90;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lu90;->e:Z

    invoke-static {}, Lv90;->a()Lv90;

    move-result-object v0

    invoke-virtual {v0, p0}, Lv90;->d(Lu90;)V

    invoke-static {}, Lba0;->a()Lba0;

    move-result-object v0

    invoke-virtual {v0}, Lba0;->f()F

    move-result v0

    iget-object v1, p0, Lu90;->d:Lka0;

    .line 1
    invoke-static {}, Laa0;->a()Laa0;

    move-result-object v2

    invoke-virtual {v1}, Lka0;->i()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Laa0;->c(Landroid/webkit/WebView;F)V

    .line 2
    iget-object v0, p0, Lu90;->d:Lka0;

    iget-object v1, p0, Lu90;->a:Ln90;

    invoke-virtual {v0, p0, v1}, Lka0;->c(Lu90;Ln90;)V

    return-void
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lx90;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lu90;->b:Ljava/util/List;

    return-object v0
.end method

.method public f()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lu90;->c:Lia0;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lu90;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lu90;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu90;->g:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lka0;
    .locals 1

    iget-object v0, p0, Lu90;->d:Lka0;

    return-object v0
.end method
