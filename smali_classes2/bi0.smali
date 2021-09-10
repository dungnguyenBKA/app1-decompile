.class public final Lbi0;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private b:Ljava/io/IOException;

.field private c:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 2
    iput-object p1, p0, Lbi0;->b:Ljava/io/IOException;

    .line 3
    iput-object p1, p0, Lbi0;->c:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/IOException;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbi0;->b:Ljava/io/IOException;

    invoke-static {v0, p1}, Lrh0;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 2
    iput-object p1, p0, Lbi0;->c:Ljava/io/IOException;

    return-void
.end method

.method public b()Ljava/io/IOException;
    .locals 1

    .line 1
    iget-object v0, p0, Lbi0;->b:Ljava/io/IOException;

    return-object v0
.end method

.method public c()Ljava/io/IOException;
    .locals 1

    .line 1
    iget-object v0, p0, Lbi0;->c:Ljava/io/IOException;

    return-object v0
.end method
