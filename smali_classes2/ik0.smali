.class public final Lik0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/logging/Logger;

.field public static final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lik0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lik0;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;)Lqk0;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 2
    new-instance p0, Lsk0;

    invoke-direct {p0}, Lsk0;-><init>()V

    invoke-static {v0, p0}, Lik0;->f(Ljava/io/OutputStream;Lsk0;)Lqk0;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lqk0;)Lyj0;
    .locals 1

    .line 1
    new-instance v0, Llk0;

    invoke-direct {v0, p0}, Llk0;-><init>(Lqk0;)V

    return-object v0
.end method

.method public static c(Lrk0;)Lzj0;
    .locals 1

    .line 1
    new-instance v0, Lmk0;

    invoke-direct {v0, p0}, Lmk0;-><init>(Lrk0;)V

    return-object v0
.end method

.method static d(Ljava/lang/AssertionError;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getsockname failed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(Ljava/io/File;)Lqk0;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2
    new-instance p0, Lsk0;

    invoke-direct {p0}, Lsk0;-><init>()V

    invoke-static {v0, p0}, Lik0;->f(Ljava/io/OutputStream;Lsk0;)Lqk0;

    move-result-object p0

    return-object p0
.end method

.method private static f(Ljava/io/OutputStream;Lsk0;)Lqk0;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lik0$a;

    invoke-direct {v0, p1, p0}, Lik0$a;-><init>(Lsk0;Ljava/io/OutputStream;)V

    return-object v0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "out == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g(Ljava/net/Socket;)Lqk0;
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljk0;

    invoke-direct {v0, p0}, Ljk0;-><init>(Ljava/net/Socket;)V

    .line 3
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-static {p0, v0}, Lik0;->f(Ljava/io/OutputStream;Lsk0;)Lqk0;

    move-result-object p0

    .line 4
    new-instance v1, Ltj0;

    invoke-direct {v1, v0, p0}, Ltj0;-><init>(Lvj0;Lqk0;)V

    return-object v1

    .line 5
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "socket\'s output stream == null"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h(Ljava/io/InputStream;)Lrk0;
    .locals 1

    .line 1
    new-instance v0, Lsk0;

    invoke-direct {v0}, Lsk0;-><init>()V

    invoke-static {p0, v0}, Lik0;->i(Ljava/io/InputStream;Lsk0;)Lrk0;

    move-result-object p0

    return-object p0
.end method

.method private static i(Ljava/io/InputStream;Lsk0;)Lrk0;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lik0$b;

    invoke-direct {v0, p1, p0}, Lik0$b;-><init>(Lsk0;Ljava/io/InputStream;)V

    return-object v0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "in == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j(Ljava/net/Socket;)Lrk0;
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljk0;

    invoke-direct {v0, p0}, Ljk0;-><init>(Ljava/net/Socket;)V

    .line 3
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, v0}, Lik0;->i(Ljava/io/InputStream;Lsk0;)Lrk0;

    move-result-object p0

    .line 4
    new-instance v1, Luj0;

    invoke-direct {v1, v0, p0}, Luj0;-><init>(Lvj0;Lrk0;)V

    return-object v1

    .line 5
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "socket\'s input stream == null"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
