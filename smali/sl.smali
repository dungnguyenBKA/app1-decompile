.class public abstract Lsl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsl$c;,
        Lsl$d;,
        Lsl$a;,
        Lsl$b;
    }
.end annotation


# instance fields
.field protected a:Lql;

.field private b:Lql$a;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Z

.field private e:Z

.field protected f:Z

.field private final g:Ljava/lang/Object;

.field protected h:Landroid/content/Context;

.field protected i:Landroid/content/res/Resources;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lsl;->d:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lsl;->e:Z

    .line 4
    iput-boolean v0, p0, Lsl;->f:Z

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsl;->g:Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Lsl;->h:Landroid/content/Context;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lsl;->i:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic a(Lsl;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lsl;->g:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lsl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lsl;->e:Z

    return p0
.end method

.method static c(Lsl;Ljava/lang/Object;Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;Lsl$d;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lsl;->d:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    iget-object v4, p0, Lsl;->i:Landroid/content/res/Resources;

    const v5, 0x106000d

    .line 3
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p0, p0, Lsl;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p0, 0xc8

    .line 6
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    if-eqz p4, :cond_1

    .line 8
    invoke-interface {p4, p1, p2, p3}, Lsl$d;->c(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;)V

    :cond_1
    return-void
.end method

.method static synthetic d(Landroid/widget/ImageView;)Lsl$b;
    .locals 0

    .line 1
    invoke-static {p0}, Lsl;->h(Landroid/widget/ImageView;)Lsl$b;

    move-result-object p0

    return-object p0
.end method

.method private static h(Landroid/widget/ImageView;)Lsl$b;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 2
    instance-of v0, p0, Lsl$a;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lsl$a;

    .line 4
    invoke-virtual {p0}, Lsl$a;->a()Lsl$b;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public e(Landroid/content/Context;Lql$a;)V
    .locals 2

    .line 1
    iput-object p2, p0, Lsl;->b:Lql$a;

    .line 2
    invoke-static {p2}, Lql;->k(Lql$a;)Lql;

    move-result-object p1

    iput-object p1, p0, Lsl;->a:Lql;

    .line 3
    new-instance p1, Lsl$c;

    invoke-direct {p1, p0}, Lsl$c;-><init>(Lsl;)V

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p1, v0}, Lml;->g([Ljava/lang/Object;)Lml;

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsl;->a:Lql;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lql;->e()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 4

    .line 1
    new-instance v0, Lsl$c;

    invoke-direct {v0, p0}, Lsl$c;-><init>(Lsl;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lml;->g([Ljava/lang/Object;)Lml;

    return-void
.end method

.method protected abstract i(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public j(Ljava/lang/Object;Landroid/widget/ImageView;II)V
    .locals 11

    if-nez p1, :cond_0

    goto :goto_3

    .line 1
    :cond_0
    iget-object v0, p0, Lsl;->a:Lql;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lsl;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lql;->h(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 4
    :cond_2
    invoke-static {p2}, Lsl;->h(Landroid/widget/ImageView;)Lsl$b;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 5
    invoke-static {v0}, Lsl$b;->n(Lsl$b;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 6
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 7
    :cond_4
    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    invoke-virtual {v0, v2}, Lml;->e(Z)Z

    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    .line 9
    new-instance v0, Lsl$b;

    const/4 v10, 0x0

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v4 .. v10}, Lsl$b;-><init>(Lsl;Ljava/lang/Object;Landroid/widget/ImageView;IILsl$d;)V

    .line 10
    new-instance p1, Lsl$a;

    iget-object p3, p0, Lsl;->i:Landroid/content/res/Resources;

    invoke-direct {p1, p3, v1, v0}, Lsl$a;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lsl$b;)V

    .line 11
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    sget-object p1, Lml;->j:Ljava/util/concurrent/Executor;

    new-array p2, v3, [Ljava/lang/Void;

    .line 13
    invoke-virtual {v0, p1, p2}, Lml;->i(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lml;

    :cond_6
    :goto_3
    return-void
.end method

.method protected abstract k(Ljava/lang/Object;IILsl$d;)Landroid/graphics/Bitmap;
.end method

.method public l(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsl;->e:Z

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lsl;->o(Z)V

    return-void
.end method

.method public m(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsl;->d:Z

    return-void
.end method

.method public n(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsl;->i:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lsl;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public o(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsl;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-boolean p1, p0, Lsl;->f:Z

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lsl;->g:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
