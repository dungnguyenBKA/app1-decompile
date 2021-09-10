.class public Lba0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh90;


# static fields
.field private static f:Lba0;


# instance fields
.field private a:F

.field private final b:Lj90;

.field private final c:Lg90;

.field private d:Li90;

.field private e:Lv90;


# direct methods
.method public constructor <init>(Lj90;Lg90;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lba0;->a:F

    iput-object p1, p0, Lba0;->b:Lj90;

    iput-object p2, p0, Lba0;->c:Lg90;

    return-void
.end method

.method public static a()Lba0;
    .locals 3

    sget-object v0, Lba0;->f:Lba0;

    if-nez v0, :cond_0

    new-instance v0, Lg90;

    invoke-direct {v0}, Lg90;-><init>()V

    new-instance v1, Lj90;

    invoke-direct {v1}, Lj90;-><init>()V

    new-instance v2, Lba0;

    invoke-direct {v2, v1, v0}, Lba0;-><init>(Lj90;Lg90;)V

    sput-object v2, Lba0;->f:Lba0;

    :cond_0
    sget-object v0, Lba0;->f:Lba0;

    return-object v0
.end method


# virtual methods
.method public b(F)V
    .locals 3

    iput p1, p0, Lba0;->a:F

    .line 1
    iget-object v0, p0, Lba0;->e:Lv90;

    if-nez v0, :cond_0

    invoke-static {}, Lv90;->a()Lv90;

    move-result-object v0

    iput-object v0, p0, Lba0;->e:Lv90;

    :cond_0
    iget-object v0, p0, Lba0;->e:Lv90;

    .line 2
    invoke-virtual {v0}, Lv90;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu90;

    invoke-virtual {v1}, Lu90;->i()Lka0;

    move-result-object v1

    .line 3
    invoke-static {}, Laa0;->a()Laa0;

    move-result-object v2

    invoke-virtual {v1}, Lka0;->i()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v2, v1, p1}, Laa0;->c(Landroid/webkit/WebView;F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lba0;->c:Lg90;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lf90;

    invoke-direct {v0}, Lf90;-><init>()V

    .line 2
    iget-object v1, p0, Lba0;->b:Lj90;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Li90;

    invoke-direct {v1, v2, p1, v0, p0}, Li90;-><init>(Landroid/os/Handler;Landroid/content/Context;Lf90;Lh90;)V

    .line 4
    iput-object v1, p0, Lba0;->d:Li90;

    return-void
.end method

.method public d()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-static {}, Lv90;->a()Lv90;

    move-result-object v1

    invoke-virtual {v1}, Lv90;->c()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu90;

    invoke-virtual {v2}, Lu90;->i()Lka0;

    move-result-object v2

    invoke-virtual {v2, v0}, Lka0;->f(Z)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lna0;->i()Lna0;

    move-result-object v0

    invoke-virtual {v0}, Lna0;->b()V

    iget-object v0, p0, Lba0;->d:Li90;

    invoke-virtual {v0}, Li90;->a()V

    return-void
.end method

.method public e()V
    .locals 1

    invoke-static {}, Lna0;->i()Lna0;

    move-result-object v0

    invoke-virtual {v0}, Lna0;->d()V

    invoke-static {}, Lw90;->a()Lw90;

    move-result-object v0

    invoke-virtual {v0}, Lw90;->b()V

    iget-object v0, p0, Lba0;->d:Li90;

    invoke-virtual {v0}, Li90;->b()V

    return-void
.end method

.method public f()F
    .locals 1

    iget v0, p0, Lba0;->a:F

    return v0
.end method
