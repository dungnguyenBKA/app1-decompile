.class public Ltl;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "SourceFile"


# instance fields
.field private a:I


# virtual methods
.method public a(Z)V
    .locals 0

    .line 1
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget p1, p0, Ltl;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ltl;->a:I

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Ltl;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Ltl;->a:I

    .line 4
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-enter p0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
