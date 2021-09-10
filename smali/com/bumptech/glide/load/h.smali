.class public final Lcom/bumptech/glide/load/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/h$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final e:Lcom/bumptech/glide/load/h$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/h$b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/load/h$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/h$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private volatile d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/h$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/h$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/h;->e:Lcom/bumptech/glide/load/h$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/h$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/bumptech/glide/load/h$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lcom/bumptech/glide/load/h;->c:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/bumptech/glide/load/h;->a:Ljava/lang/Object;

    const-string p1, "Argument must not be null"

    .line 5
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object p3, p0, Lcom/bumptech/glide/load/h;->b:Lcom/bumptech/glide/load/h$b;

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must not be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/h$b;)Lcom/bumptech/glide/load/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/bumptech/glide/load/h$b<",
            "TT;>;)",
            "Lcom/bumptech/glide/load/h<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/h;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/load/h;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/h$b;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lcom/bumptech/glide/load/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/load/h<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/h;

    sget-object v1, Lcom/bumptech/glide/load/h;->e:Lcom/bumptech/glide/load/h$b;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lcom/bumptech/glide/load/h;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/h$b;)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/bumptech/glide/load/h<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/h;

    sget-object v1, Lcom/bumptech/glide/load/h;->e:Lcom/bumptech/glide/load/h$b;

    invoke-direct {v0, p0, p1, v1}, Lcom/bumptech/glide/load/h;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/h$b;)V

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/h;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public e(Ljava/lang/Object;Ljava/security/MessageDigest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/security/MessageDigest;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/h;->b:Lcom/bumptech/glide/load/h$b;

    .line 2
    iget-object v1, p0, Lcom/bumptech/glide/load/h;->d:[B

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/load/h;->c:Ljava/lang/String;

    sget-object v2, Lcom/bumptech/glide/load/g;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/h;->d:[B

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/load/h;->d:[B

    .line 5
    invoke-interface {v0, v1, p1, p2}, Lcom/bumptech/glide/load/h$b;->a([BLjava/lang/Object;Ljava/security/MessageDigest;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/bumptech/glide/load/h;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/bumptech/glide/load/h;

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/load/h;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/bumptech/glide/load/h;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/h;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Option{key=\'"

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
