.class Lwd$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lil$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwd$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lil$b<",
        "Ltd<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lwd$a;


# direct methods
.method constructor <init>(Lwd$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwd$a$a;->a:Lwd$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Ltd;

    iget-object v1, p0, Lwd$a$a;->a:Lwd$a;

    iget-object v2, v1, Lwd$a;->a:Ltd$d;

    iget-object v1, v1, Lwd$a;->b:Lk2;

    invoke-direct {v0, v2, v1}, Ltd;-><init>(Ltd$d;Lk2;)V

    return-object v0
.end method
