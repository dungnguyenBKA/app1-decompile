.class Lj1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj1;->a(ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lj1;


# direct methods
.method constructor <init>(Lj1;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj1$b;->c:Lj1;

    iput p2, p0, Lj1$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj1$b;->c:Lj1;

    iget v1, p0, Lj1$b;->b:I

    invoke-virtual {v0, v1}, Lj1;->c(I)V

    return-void
.end method
