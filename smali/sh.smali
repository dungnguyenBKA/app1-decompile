.class public Lsh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsh$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/k<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lfh;

.field private final b:Loe;


# direct methods
.method public constructor <init>(Lfh;Loe;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lsh;->a:Lfh;

    .line 3
    iput-object p2, p0, Lsh;->b:Loe;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/bumptech/glide/load/i;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/io/InputStream;

    .line 2
    iget-object p1, p0, Lsh;->a:Lfh;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/Object;IILcom/bumptech/glide/load/i;)Lhe;
    .locals 8

    .line 1
    check-cast p1, Ljava/io/InputStream;

    .line 2
    instance-of v0, p1, Lph;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lph;

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lph;

    iget-object v1, p0, Lsh;->b:Loe;

    invoke-direct {v0, p1, v1}, Lph;-><init>(Ljava/io/InputStream;Loe;)V

    const/4 p1, 0x1

    move-object p1, v0

    const/4 v0, 0x1

    .line 5
    :goto_0
    invoke-static {p1}, Lbl;->o(Ljava/io/InputStream;)Lbl;

    move-result-object v1

    .line 6
    new-instance v3, Lfl;

    invoke-direct {v3, v1}, Lfl;-><init>(Ljava/io/InputStream;)V

    .line 7
    new-instance v7, Lsh$a;

    invoke-direct {v7, p1, v1}, Lsh$a;-><init>(Lph;Lbl;)V

    .line 8
    :try_start_0
    iget-object v2, p0, Lsh;->a:Lfh;

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Lfh;->d(Ljava/io/InputStream;IILcom/bumptech/glide/load/i;Lfh$b;)Lhe;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v1}, Lbl;->L()V

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p1}, Lph;->L()V

    :cond_1
    return-object p2

    :catchall_0
    move-exception p2

    .line 11
    invoke-virtual {v1}, Lbl;->L()V

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p1}, Lph;->L()V

    :cond_2
    throw p2
.end method
