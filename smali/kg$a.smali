.class public Lkg$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lag<",
        "Lsf;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lyf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyf<",
            "Lsf;",
            "Lsf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lyf;

    const-wide/16 v1, 0x1f4

    invoke-direct {v0, v1, v2}, Lyf;-><init>(J)V

    iput-object v0, p0, Lkg$a;->a:Lyf;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public c(Ldg;)Lzf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldg;",
            ")",
            "Lzf<",
            "Lsf;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lkg;

    iget-object v0, p0, Lkg$a;->a:Lyf;

    invoke-direct {p1, v0}, Lkg;-><init>(Lyf;)V

    return-object p1
.end method
