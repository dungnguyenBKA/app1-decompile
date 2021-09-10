.class public final Lui0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgi0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui0$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Leh0$a;

.field final b:Ldi0;

.field private final c:Lvi0;

.field private d:Laj0;

.field private final e:Lhh0;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "connection"

    const-string v1, "host"

    const-string v2, "keep-alive"

    const-string v3, "proxy-connection"

    const-string v4, "te"

    const-string v5, "transfer-encoding"

    const-string v6, "encoding"

    const-string v7, "upgrade"

    const-string v8, ":method"

    const-string v9, ":path"

    const-string v10, ":scheme"

    const-string v11, ":authority"

    .line 1
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lrh0;->r([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lui0;->f:Ljava/util/List;

    const-string v1, "connection"

    const-string v2, "host"

    const-string v3, "keep-alive"

    const-string v4, "proxy-connection"

    const-string v5, "te"

    const-string v6, "transfer-encoding"

    const-string v7, "encoding"

    const-string v8, "upgrade"

    .line 2
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lrh0;->r([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lui0;->g:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lgh0;Leh0$a;Ldi0;Lvi0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lui0;->a:Leh0$a;

    .line 3
    iput-object p3, p0, Lui0;->b:Ldi0;

    .line 4
    iput-object p4, p0, Lui0;->c:Lvi0;

    .line 5
    invoke-virtual {p1}, Lgh0;->m()Ljava/util/List;

    move-result-object p1

    sget-object p2, Lhh0;->g:Lhh0;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget-object p2, Lhh0;->f:Lhh0;

    :goto_0
    iput-object p2, p0, Lui0;->e:Lhh0;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lui0;->d:Laj0;

    invoke-virtual {v0}, Laj0;->g()Lqk0;

    move-result-object v0

    check-cast v0, Laj0$a;

    invoke-virtual {v0}, Laj0$a;->close()V

    return-void
.end method

.method public b(Ljh0;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lui0;->d:Laj0;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljh0;->a()Lkh0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljh0;->d()Lch0;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lch0;->f()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    new-instance v4, Lri0;

    sget-object v5, Lri0;->f:Lak0;

    invoke-virtual {p1}, Ljh0;->f()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lri0;-><init>(Lak0;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v4, Lri0;

    sget-object v5, Lri0;->g:Lak0;

    invoke-virtual {p1}, Ljh0;->h()Ldh0;

    move-result-object v6

    invoke-static {v6}, Lli0;->a(Ldh0;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lri0;-><init>(Lak0;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "Host"

    .line 7
    invoke-virtual {p1, v4}, Ljh0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 8
    new-instance v5, Lri0;

    sget-object v6, Lri0;->i:Lak0;

    invoke-direct {v5, v6, v4}, Lri0;-><init>(Lak0;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_2
    new-instance v4, Lri0;

    sget-object v5, Lri0;->h:Lak0;

    invoke-virtual {p1}, Ljh0;->h()Ldh0;

    move-result-object p1

    invoke-virtual {p1}, Ldh0;->y()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, v5, p1}, Lri0;-><init>(Lak0;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {v2}, Lch0;->f()I

    move-result p1

    :goto_1
    if-ge v1, p1, :cond_4

    .line 11
    invoke-virtual {v2, v1}, Lch0;->d(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lak0;->e(Ljava/lang/String;)Lak0;

    move-result-object v4

    .line 12
    sget-object v5, Lui0;->f:Ljava/util/List;

    invoke-virtual {v4}, Lak0;->q()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 13
    new-instance v5, Lri0;

    invoke-virtual {v2, v1}, Lch0;->g(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lri0;-><init>(Lak0;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 14
    :cond_4
    iget-object p1, p0, Lui0;->c:Lvi0;

    invoke-virtual {p1, v3, v0}, Lvi0;->r0(Ljava/util/List;Z)Laj0;

    move-result-object p1

    iput-object p1, p0, Lui0;->d:Laj0;

    .line 15
    iget-object p1, p1, Laj0;->i:Laj0$c;

    .line 16
    iget-object v0, p0, Lui0;->a:Leh0$a;

    check-cast v0, Lji0;

    invoke-virtual {v0}, Lji0;->h()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lsk0;->g(JLjava/util/concurrent/TimeUnit;)Lsk0;

    .line 17
    iget-object p1, p0, Lui0;->d:Laj0;

    .line 18
    iget-object p1, p1, Laj0;->j:Laj0$c;

    .line 19
    iget-object v0, p0, Lui0;->a:Leh0$a;

    check-cast v0, Lji0;

    invoke-virtual {v0}, Lji0;->k()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1, v2}, Lsk0;->g(JLjava/util/concurrent/TimeUnit;)Lsk0;

    return-void
.end method

.method public c(Llh0;)Lmh0;
    .locals 4

    .line 1
    iget-object v0, p0, Lui0;->b:Ldi0;

    iget-object v0, v0, Ldi0;->f:Lzg0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Content-Type"

    .line 3
    invoke-virtual {p1, v0}, Llh0;->V(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {p1}, Lii0;->a(Llh0;)J

    move-result-wide v1

    .line 5
    new-instance p1, Lui0$a;

    iget-object v3, p0, Lui0;->d:Laj0;

    invoke-virtual {v3}, Laj0;->h()Lrk0;

    move-result-object v3

    invoke-direct {p1, p0, v3}, Lui0$a;-><init>(Lui0;Lrk0;)V

    .line 6
    new-instance v3, Lki0;

    invoke-static {p1}, Lik0;->c(Lrk0;)Lzj0;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Lki0;-><init>(Ljava/lang/String;JLzj0;)V

    return-object v3
.end method

.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lui0;->d:Laj0;

    if-eqz v0, :cond_0

    sget-object v1, Lqi0;->h:Lqi0;

    invoke-virtual {v0, v1}, Laj0;->f(Lqi0;)V

    :cond_0
    return-void
.end method

.method public d(Z)Llh0$a;
    .locals 10

    .line 1
    iget-object v0, p0, Lui0;->d:Laj0;

    invoke-virtual {v0}, Laj0;->n()Lch0;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lui0;->e:Lhh0;

    .line 3
    new-instance v2, Lch0$a;

    invoke-direct {v2}, Lch0$a;-><init>()V

    .line 4
    invoke-virtual {v0}, Lch0;->f()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v5

    :goto_0
    if-ge v4, v3, :cond_2

    .line 5
    invoke-virtual {v0, v4}, Lch0;->d(I)Ljava/lang/String;

    move-result-object v7

    .line 6
    invoke-virtual {v0, v4}, Lch0;->g(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ":status"

    .line 7
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTTP/1.1 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lni0;->a(Ljava/lang/String;)Lni0;

    move-result-object v6

    goto :goto_1

    .line 9
    :cond_0
    sget-object v9, Lui0;->g:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 10
    sget-object v9, Lph0;->a:Lph0;

    invoke-virtual {v9, v2, v7, v8}, Lph0;->b(Lch0$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_4

    .line 11
    new-instance v0, Llh0$a;

    invoke-direct {v0}, Llh0$a;-><init>()V

    .line 12
    invoke-virtual {v0, v1}, Llh0$a;->m(Lhh0;)Llh0$a;

    iget v1, v6, Lni0;->b:I

    .line 13
    invoke-virtual {v0, v1}, Llh0$a;->f(I)Llh0$a;

    iget-object v1, v6, Lni0;->c:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v1}, Llh0$a;->j(Ljava/lang/String;)Llh0$a;

    .line 15
    invoke-virtual {v2}, Lch0$a;->b()Lch0;

    move-result-object v1

    invoke-virtual {v0, v1}, Llh0$a;->i(Lch0;)Llh0$a;

    if-eqz p1, :cond_3

    .line 16
    sget-object p1, Lph0;->a:Lph0;

    invoke-virtual {p1, v0}, Lph0;->d(Llh0$a;)I

    move-result p1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_3

    return-object v5

    :cond_3
    return-object v0

    .line 17
    :cond_4
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Expected \':status\' header not present"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lui0;->c:Lvi0;

    .line 2
    iget-object v0, v0, Lvi0;->w:Lbj0;

    invoke-virtual {v0}, Lbj0;->flush()V

    return-void
.end method

.method public f(Ljh0;J)Lqk0;
    .locals 0

    .line 1
    iget-object p1, p0, Lui0;->d:Laj0;

    invoke-virtual {p1}, Laj0;->g()Lqk0;

    move-result-object p1

    return-object p1
.end method
