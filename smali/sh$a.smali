.class Lsh$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfh$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lph;

.field private final b:Lbl;


# direct methods
.method constructor <init>(Lph;Lbl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lsh$a;->a:Lph;

    .line 3
    iput-object p2, p0, Lsh$a;->b:Lbl;

    return-void
.end method


# virtual methods
.method public a(Lqe;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsh$a;->b:Lbl;

    invoke-virtual {v0}, Lbl;->j()Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p1, p2}, Lqe;->d(Landroid/graphics/Bitmap;)V

    .line 3
    :cond_0
    throw v0

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsh$a;->a:Lph;

    invoke-virtual {v0}, Lph;->o()V

    return-void
.end method
