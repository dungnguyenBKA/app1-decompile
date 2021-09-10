.class public Lek0;
.super Lsk0;
.source "SourceFile"


# instance fields
.field private e:Lsk0;


# direct methods
.method public constructor <init>(Lsk0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lsk0;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lek0;->e:Lsk0;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lsk0;
    .locals 1

    .line 1
    iget-object v0, p0, Lek0;->e:Lsk0;

    invoke-virtual {v0}, Lsk0;->a()Lsk0;

    move-result-object v0

    return-object v0
.end method

.method public b()Lsk0;
    .locals 1

    .line 1
    iget-object v0, p0, Lek0;->e:Lsk0;

    invoke-virtual {v0}, Lsk0;->b()Lsk0;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-object v0, p0, Lek0;->e:Lsk0;

    invoke-virtual {v0}, Lsk0;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public d(J)Lsk0;
    .locals 1

    .line 1
    iget-object v0, p0, Lek0;->e:Lsk0;

    invoke-virtual {v0, p1, p2}, Lsk0;->d(J)Lsk0;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lek0;->e:Lsk0;

    invoke-virtual {v0}, Lsk0;->e()Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lek0;->e:Lsk0;

    invoke-virtual {v0}, Lsk0;->f()V

    return-void
.end method

.method public g(JLjava/util/concurrent/TimeUnit;)Lsk0;
    .locals 1

    .line 1
    iget-object v0, p0, Lek0;->e:Lsk0;

    invoke-virtual {v0, p1, p2, p3}, Lsk0;->g(JLjava/util/concurrent/TimeUnit;)Lsk0;

    move-result-object p1

    return-object p1
.end method

.method public final i()Lsk0;
    .locals 1

    .line 1
    iget-object v0, p0, Lek0;->e:Lsk0;

    return-object v0
.end method

.method public final j(Lsk0;)Lek0;
    .locals 0

    .line 1
    iput-object p1, p0, Lek0;->e:Lsk0;

    return-object p0
.end method
