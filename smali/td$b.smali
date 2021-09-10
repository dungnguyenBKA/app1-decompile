.class final Ltd$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lud$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lud$a<",
        "TZ;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/a;

.field final synthetic b:Ltd;


# direct methods
.method constructor <init>(Ltd;Lcom/bumptech/glide/load/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltd$b;->b:Ltd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ltd$b;->a:Lcom/bumptech/glide/load/a;

    return-void
.end method


# virtual methods
.method public a(Lhe;)Lhe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhe<",
            "TZ;>;)",
            "Lhe<",
            "TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ltd$b;->b:Ltd;

    iget-object v1, p0, Ltd$b;->a:Lcom/bumptech/glide/load/a;

    invoke-virtual {v0, v1, p1}, Ltd;->n(Lcom/bumptech/glide/load/a;Lhe;)Lhe;

    move-result-object p1

    return-object p1
.end method
