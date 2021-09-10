.class public Lcom/google/android/material/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/g$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/text/TextPaint;

.field private final b:Lby;

.field private c:F

.field private d:Z

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/material/internal/g$b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lzx;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/g$b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/internal/g;->a:Landroid/text/TextPaint;

    .line 3
    new-instance v0, Lcom/google/android/material/internal/g$a;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/g$a;-><init>(Lcom/google/android/material/internal/g;)V

    iput-object v0, p0, Lcom/google/android/material/internal/g;->b:Lby;

    .line 4
    iput-boolean v1, p0, Lcom/google/android/material/internal/g;->d:Z

    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/internal/g;->e:Ljava/lang/ref/WeakReference;

    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/internal/g;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/internal/g;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/internal/g;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/material/internal/g;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/internal/g;->e:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public c()Lzx;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/g;->f:Lzx;

    return-object v0
.end method

.method public d()Landroid/text/TextPaint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/g;->a:Landroid/text/TextPaint;

    return-object v0
.end method

.method public e(Ljava/lang/String;)F
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/internal/g;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget p1, p0, Lcom/google/android/material/internal/g;->c:F

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/internal/g;->a:Landroid/text/TextPaint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p1

    .line 4
    :goto_0
    iput p1, p0, Lcom/google/android/material/internal/g;->c:F

    .line 5
    iput-boolean v0, p0, Lcom/google/android/material/internal/g;->d:Z

    return p1
.end method

.method public f(Lzx;Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/g;->f:Lzx;

    if-eq v0, p1, :cond_2

    .line 2
    iput-object p1, p0, Lcom/google/android/material/internal/g;->f:Lzx;

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/material/internal/g;->a:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/g;->b:Lby;

    invoke-virtual {p1, p2, v0, v1}, Lzx;->h(Landroid/content/Context;Landroid/text/TextPaint;Lby;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/internal/g;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/g$b;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/google/android/material/internal/g;->a:Landroid/text/TextPaint;

    invoke-interface {v0}, Lcom/google/android/material/internal/g$b;->getState()[I

    move-result-object v0

    iput-object v0, v1, Landroid/text/TextPaint;->drawableState:[I

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/g;->a:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/g;->b:Lby;

    invoke-virtual {p1, p2, v0, v1}, Lzx;->g(Landroid/content/Context;Landroid/text/TextPaint;Lby;)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/google/android/material/internal/g;->d:Z

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/internal/g;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/internal/g$b;

    if-eqz p1, :cond_2

    .line 9
    invoke-interface {p1}, Lcom/google/android/material/internal/g$b;->a()V

    .line 10
    invoke-interface {p1}, Lcom/google/android/material/internal/g$b;->getState()[I

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/material/internal/g$b;->onStateChange([I)Z

    :cond_2
    return-void
.end method

.method public g(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/internal/g;->d:Z

    return-void
.end method

.method public h(Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/g;->f:Lzx;

    iget-object v1, p0, Lcom/google/android/material/internal/g;->a:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/google/android/material/internal/g;->b:Lby;

    invoke-virtual {v0, p1, v1, v2}, Lzx;->g(Landroid/content/Context;Landroid/text/TextPaint;Lby;)V

    return-void
.end method
