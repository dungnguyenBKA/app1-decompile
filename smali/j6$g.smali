.class final Lj6$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final b:Lj6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj6<",
            "TV;>;"
        }
    .end annotation
.end field

.field final c:Luy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luy<",
            "+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lj6;Luy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj6<",
            "TV;>;",
            "Luy<",
            "+TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj6$g;->b:Lj6;

    .line 3
    iput-object p2, p0, Lj6$g;->c:Luy;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lj6$g;->b:Lj6;

    iget-object v0, v0, Lj6;->b:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lj6$g;->c:Luy;

    invoke-static {v0}, Lj6;->e(Luy;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    sget-object v1, Lj6;->g:Lj6$b;

    iget-object v2, p0, Lj6$g;->b:Lj6;

    invoke-virtual {v1, v2, p0, v0}, Lj6$b;->b(Lj6;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lj6$g;->b:Lj6;

    invoke-static {v0}, Lj6;->b(Lj6;)V

    :cond_1
    return-void
.end method
