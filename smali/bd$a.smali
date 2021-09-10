.class public final Lbd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvc$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvc$a<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Loe;


# direct methods
.method public constructor <init>(Loe;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lbd$a;->a:Loe;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Lvc;
    .locals 2

    .line 1
    check-cast p1, Ljava/io/InputStream;

    .line 2
    new-instance v0, Lbd;

    iget-object v1, p0, Lbd$a;->a:Loe;

    invoke-direct {v0, p1, v1}, Lbd;-><init>(Ljava/io/InputStream;Loe;)V

    return-object v0
.end method
