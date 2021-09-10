.class public final Lnl$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field private final b:[Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lnl;Ljava/lang/String;J[Ljava/io/InputStream;Lnl$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p5, p0, Lnl$d;->b:[Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lnl$d;->b:[Ljava/io/InputStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-static {v3}, Lnl;->l0(Ljava/io/Closeable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j(I)Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lnl$d;->b:[Ljava/io/InputStream;

    aget-object p1, v0, p1

    return-object p1
.end method
