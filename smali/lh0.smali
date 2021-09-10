.class public final Llh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llh0$a;
    }
.end annotation


# instance fields
.field final b:Ljh0;

.field final c:Lhh0;

.field final d:I

.field final e:Ljava/lang/String;

.field final f:Lbh0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final g:Lch0;

.field final h:Lmh0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final i:Llh0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final j:Llh0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final k:Llh0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final l:J

.field final m:J

.field private volatile n:Lng0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Llh0$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Llh0$a;->a:Ljh0;

    iput-object v0, p0, Llh0;->b:Ljh0;

    .line 3
    iget-object v0, p1, Llh0$a;->b:Lhh0;

    iput-object v0, p0, Llh0;->c:Lhh0;

    .line 4
    iget v0, p1, Llh0$a;->c:I

    iput v0, p0, Llh0;->d:I

    .line 5
    iget-object v0, p1, Llh0$a;->d:Ljava/lang/String;

    iput-object v0, p0, Llh0;->e:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Llh0$a;->e:Lbh0;

    iput-object v0, p0, Llh0;->f:Lbh0;

    .line 7
    iget-object v0, p1, Llh0$a;->f:Lch0$a;

    .line 8
    new-instance v1, Lch0;

    invoke-direct {v1, v0}, Lch0;-><init>(Lch0$a;)V

    .line 9
    iput-object v1, p0, Llh0;->g:Lch0;

    .line 10
    iget-object v0, p1, Llh0$a;->g:Lmh0;

    iput-object v0, p0, Llh0;->h:Lmh0;

    .line 11
    iget-object v0, p1, Llh0$a;->h:Llh0;

    iput-object v0, p0, Llh0;->i:Llh0;

    .line 12
    iget-object v0, p1, Llh0$a;->i:Llh0;

    iput-object v0, p0, Llh0;->j:Llh0;

    .line 13
    iget-object v0, p1, Llh0$a;->j:Llh0;

    iput-object v0, p0, Llh0;->k:Llh0;

    .line 14
    iget-wide v0, p1, Llh0$a;->k:J

    iput-wide v0, p0, Llh0;->l:J

    .line 15
    iget-wide v0, p1, Llh0$a;->l:J

    iput-wide v0, p0, Llh0;->m:J

    return-void
.end method


# virtual methods
.method public L()I
    .locals 1

    .line 1
    iget v0, p0, Llh0;->d:I

    return v0
.end method

.method public S()Lbh0;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Llh0;->f:Lbh0;

    return-object v0
.end method

.method public V(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Llh0;->g:Lch0;

    invoke-virtual {v0, p1}, Lch0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public b0()Lch0;
    .locals 1

    .line 1
    iget-object v0, p0, Llh0;->g:Lch0;

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Llh0;->h:Lmh0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lmh0;->close()V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i0()Z
    .locals 2

    .line 1
    iget v0, p0, Llh0;->d:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Lmh0;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Llh0;->h:Lmh0;

    return-object v0
.end method

.method public j0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Llh0;->e:Ljava/lang/String;

    return-object v0
.end method

.method public k0()Llh0$a;
    .locals 1

    .line 1
    new-instance v0, Llh0$a;

    invoke-direct {v0, p0}, Llh0$a;-><init>(Llh0;)V

    return-object v0
.end method

.method public l0()Llh0;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Llh0;->k:Llh0;

    return-object v0
.end method

.method public m0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Llh0;->m:J

    return-wide v0
.end method

.method public n0()Ljh0;
    .locals 1

    .line 1
    iget-object v0, p0, Llh0;->b:Ljh0;

    return-object v0
.end method

.method public o()Lng0;
    .locals 1

    .line 1
    iget-object v0, p0, Llh0;->n:Lng0;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Llh0;->g:Lch0;

    invoke-static {v0}, Lng0;->j(Lch0;)Lng0;

    move-result-object v0

    iput-object v0, p0, Llh0;->n:Lng0;

    :goto_0
    return-object v0
.end method

.method public o0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Llh0;->l:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Response{protocol="

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llh0;->c:Lhh0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Llh0;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Llh0;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Llh0;->b:Ljh0;

    .line 2
    iget-object v1, v1, Ljh0;->a:Ldh0;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
