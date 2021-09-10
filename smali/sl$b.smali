.class public Lsl$b;
.super Lml;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lml<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private n:Ljava/lang/Object;

.field private o:Lsl$d;

.field private p:I

.field private q:I

.field private final r:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic s:Lsl;


# direct methods
.method public constructor <init>(Lsl;Ljava/lang/Object;Landroid/widget/ImageView;IILsl$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsl$b;->s:Lsl;

    invoke-direct {p0}, Lml;-><init>()V

    .line 2
    iput-object p2, p0, Lsl$b;->n:Ljava/lang/Object;

    .line 3
    iput-object p6, p0, Lsl$b;->o:Lsl$d;

    .line 4
    iput p4, p0, Lsl$b;->p:I

    .line 5
    iput p5, p0, Lsl$b;->q:I

    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lsl$b;->r:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic n(Lsl$b;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lsl$b;->n:Ljava/lang/Object;

    return-object p0
.end method

.method private o()Landroid/widget/ImageView;
    .locals 2

    .line 1
    iget-object v0, p0, Lsl$b;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2
    invoke-static {v0}, Lsl;->d(Landroid/widget/ImageView;)Lsl$b;

    move-result-object v1

    if-ne p0, v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected f([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lsl$b;->s:Lsl;

    iget-object v0, p0, Lsl$b;->n:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lsl;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lsl$b;->s:Lsl;

    invoke-static {v0}, Lsl;->a(Lsl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4
    :goto_0
    :try_start_0
    iget-object v1, p0, Lsl$b;->s:Lsl;

    iget-boolean v1, v1, Lsl;->f:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lml;->j()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 5
    :try_start_1
    iget-object v1, p0, Lsl$b;->s:Lsl;

    invoke-static {v1}, Lsl;->a(Lsl;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "ImageWorker"

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InterruptedException="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    iget-object v0, p0, Lsl$b;->s:Lsl;

    iget-object v0, v0, Lsl;->a:Lql;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lml;->j()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lsl$b;->o()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsl$b;->s:Lsl;

    .line 9
    invoke-static {v0}, Lsl;->b(Lsl;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    :try_start_3
    iget-object v0, p0, Lsl$b;->s:Lsl;

    iget-object v0, v0, Lsl;->a:Lql;

    invoke-virtual {v0, p1}, Lql;->g(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 13
    iget-object v0, p0, Lsl$b;->s:Lsl;

    iget-object v0, v0, Lsl;->a:Lql;

    invoke-virtual {v0}, Lql;->d()V

    :cond_1
    :goto_1
    move-object v0, v1

    :goto_2
    if-nez v0, :cond_2

    .line 14
    invoke-virtual {p0}, Lml;->j()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lsl$b;->o()Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lsl$b;->s:Lsl;

    .line 15
    invoke-static {v2}, Lsl;->b(Lsl;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 16
    :try_start_4
    iget-object v2, p0, Lsl$b;->s:Lsl;

    iget-object v3, p0, Lsl$b;->n:Ljava/lang/Object;

    iget v4, p0, Lsl$b;->p:I

    iget v5, p0, Lsl$b;->q:I

    iget-object v6, p0, Lsl$b;->o:Lsl$d;

    invoke-virtual {v2, v3, v4, v5, v6}, Lsl;->k(Ljava/lang/Object;IILsl$d;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    .line 17
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    :cond_2
    :goto_3
    if-eqz v0, :cond_3

    .line 18
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lsl$b;->s:Lsl;

    iget-object v2, v2, Lsl;->i:Landroid/content/res/Resources;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 19
    iget-object v0, p0, Lsl$b;->s:Lsl;

    iget-object v0, v0, Lsl;->a:Lql;

    if-eqz v0, :cond_3

    .line 20
    invoke-virtual {v0, p1, v1}, Lql;->c(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    :cond_3
    return-object v1

    :catchall_0
    move-exception p1

    .line 21
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method protected bridge synthetic k(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1}, Lsl$b;->p(Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method

.method protected l(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    invoke-virtual {p0}, Lml;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lsl$b;->s:Lsl;

    invoke-static {v0}, Lsl;->b(Lsl;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object p1, v1

    .line 3
    :cond_1
    invoke-direct {p0}, Lsl$b;->o()Landroid/widget/ImageView;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lsl$b;->o:Lsl$d;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 5
    iget-object v3, p0, Lsl$b;->n:Ljava/lang/Object;

    invoke-interface {v2, v3, v0, p1}, Lsl$d;->d(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;)V

    :cond_2
    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 6
    iget-object v2, p0, Lsl$b;->s:Lsl;

    iget-object v3, p0, Lsl$b;->n:Ljava/lang/Object;

    iget-object v4, p0, Lsl$b;->o:Lsl$d;

    invoke-static {v2, v3, v0, p1, v4}, Lsl;->c(Lsl;Ljava/lang/Object;Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;Lsl$d;)V

    .line 7
    :cond_3
    iget-object v2, p0, Lsl$b;->o:Lsl$d;

    if-eqz v2, :cond_5

    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcm;->l(Landroid/graphics/Bitmap;)Z

    move-result v2

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_5

    .line 9
    iget-object v2, p0, Lsl$b;->o:Lsl$d;

    iget-object v3, p0, Lsl$b;->n:Ljava/lang/Object;

    invoke-interface {v2, v3, v0, p1}, Lsl$d;->b(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;)V

    :cond_5
    if-nez p1, :cond_8

    if-eqz v0, :cond_6

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    :cond_6
    iget-object p1, p0, Lsl$b;->o:Lsl$d;

    if-eqz p1, :cond_8

    if-eqz v0, :cond_7

    .line 12
    iget-object v0, p0, Lsl$b;->n:Ljava/lang/Object;

    const/4 v1, -0x7

    const-string v2, "ERROR_BACKGROUND_TASK_POST_NULL_BITMAP_-7"

    invoke-interface {p1, v0, v1, v2}, Lsl$d;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_7
    invoke-virtual {p0, v1}, Lsl$b;->p(Landroid/graphics/drawable/BitmapDrawable;)V

    :cond_8
    :goto_1
    return-void
.end method

.method protected p(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lsl$b;->o:Lsl$d;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lsl$b;->n:Ljava/lang/Object;

    iget-object v2, p0, Lsl$b;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v0, v1, v2, p1}, Lsl$d;->e(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lsl$b;->s:Lsl;

    invoke-static {p1}, Lsl;->a(Lsl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lsl$b;->s:Lsl;

    invoke-static {v0}, Lsl;->a(Lsl;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
