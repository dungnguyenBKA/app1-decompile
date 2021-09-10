.class public final Lcom/vungle/warren/network/Response;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final body:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final errorBody:Lmh0;

.field private final rawResponse:Llh0;


# direct methods
.method private constructor <init>(Llh0;Ljava/lang/Object;Lmh0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llh0;",
            "TT;",
            "Lmh0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/network/Response;->rawResponse:Llh0;

    .line 3
    iput-object p2, p0, Lcom/vungle/warren/network/Response;->body:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/vungle/warren/network/Response;->errorBody:Lmh0;

    return-void
.end method

.method public static error(ILmh0;)Lcom/vungle/warren/network/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lmh0;",
            ")",
            "Lcom/vungle/warren/network/Response<",
            "TT;>;"
        }
    .end annotation

    const/16 v0, 0x190

    if-lt p0, v0, :cond_0

    .line 1
    new-instance v0, Llh0$a;

    invoke-direct {v0}, Llh0$a;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Llh0$a;->f(I)Llh0$a;

    const-string p0, "Response.error()"

    .line 3
    invoke-virtual {v0, p0}, Llh0$a;->j(Ljava/lang/String;)Llh0$a;

    sget-object p0, Lhh0;->d:Lhh0;

    .line 4
    invoke-virtual {v0, p0}, Llh0$a;->m(Lhh0;)Llh0$a;

    new-instance p0, Ljh0$a;

    invoke-direct {p0}, Ljh0$a;-><init>()V

    const-string v1, "http://localhost/"

    .line 5
    invoke-virtual {p0, v1}, Ljh0$a;->g(Ljava/lang/String;)Ljh0$a;

    invoke-virtual {p0}, Ljh0$a;->b()Ljh0;

    move-result-object p0

    invoke-virtual {v0, p0}, Llh0$a;->o(Ljh0;)Llh0$a;

    .line 6
    invoke-virtual {v0}, Llh0$a;->c()Llh0;

    move-result-object p0

    .line 7
    invoke-static {p1, p0}, Lcom/vungle/warren/network/Response;->error(Lmh0;Llh0;)Lcom/vungle/warren/network/Response;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "code < 400: "

    invoke-static {v0, p0}, Lic;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static error(Lmh0;Llh0;)Lcom/vungle/warren/network/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmh0;",
            "Llh0;",
            ")",
            "Lcom/vungle/warren/network/Response<",
            "TT;>;"
        }
    .end annotation

    .line 9
    invoke-virtual {p1}, Llh0;->i0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/vungle/warren/network/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lcom/vungle/warren/network/Response;-><init>(Llh0;Ljava/lang/Object;Lmh0;)V

    return-object v0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rawResponse should not be successful response"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static success(Ljava/lang/Object;)Lcom/vungle/warren/network/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/vungle/warren/network/Response<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Llh0$a;

    invoke-direct {v0}, Llh0$a;-><init>()V

    const/16 v1, 0xc8

    .line 2
    invoke-virtual {v0, v1}, Llh0$a;->f(I)Llh0$a;

    const-string v1, "OK"

    .line 3
    invoke-virtual {v0, v1}, Llh0$a;->j(Ljava/lang/String;)Llh0$a;

    sget-object v1, Lhh0;->d:Lhh0;

    .line 4
    invoke-virtual {v0, v1}, Llh0$a;->m(Lhh0;)Llh0$a;

    new-instance v1, Ljh0$a;

    invoke-direct {v1}, Ljh0$a;-><init>()V

    const-string v2, "http://localhost/"

    .line 5
    invoke-virtual {v1, v2}, Ljh0$a;->g(Ljava/lang/String;)Ljh0$a;

    invoke-virtual {v1}, Ljh0$a;->b()Ljh0;

    move-result-object v1

    invoke-virtual {v0, v1}, Llh0$a;->o(Ljh0;)Llh0$a;

    .line 6
    invoke-virtual {v0}, Llh0$a;->c()Llh0;

    move-result-object v0

    .line 7
    invoke-static {p0, v0}, Lcom/vungle/warren/network/Response;->success(Ljava/lang/Object;Llh0;)Lcom/vungle/warren/network/Response;

    move-result-object p0

    return-object p0
.end method

.method public static success(Ljava/lang/Object;Llh0;)Lcom/vungle/warren/network/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Llh0;",
            ")",
            "Lcom/vungle/warren/network/Response<",
            "TT;>;"
        }
    .end annotation

    .line 8
    invoke-virtual {p1}, Llh0;->i0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Lcom/vungle/warren/network/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/vungle/warren/network/Response;-><init>(Llh0;Ljava/lang/Object;Lmh0;)V

    return-object v0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rawResponse must be successful response"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public body()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/network/Response;->body:Ljava/lang/Object;

    return-object v0
.end method

.method public code()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/network/Response;->rawResponse:Llh0;

    invoke-virtual {v0}, Llh0;->L()I

    move-result v0

    return v0
.end method

.method public errorBody()Lmh0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/network/Response;->errorBody:Lmh0;

    return-object v0
.end method

.method public headers()Lch0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/network/Response;->rawResponse:Llh0;

    invoke-virtual {v0}, Llh0;->b0()Lch0;

    move-result-object v0

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/network/Response;->rawResponse:Llh0;

    invoke-virtual {v0}, Llh0;->i0()Z

    move-result v0

    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/network/Response;->rawResponse:Llh0;

    invoke-virtual {v0}, Llh0;->j0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public raw()Llh0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/network/Response;->rawResponse:Llh0;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/network/Response;->rawResponse:Llh0;

    invoke-virtual {v0}, Llh0;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
