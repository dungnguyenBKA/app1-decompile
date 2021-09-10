.class Lu3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lu3;


# direct methods
.method constructor <init>(Lu3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu3$b;->b:Lu3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lu3$b;->b:Lu3;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lu3;->C(I)V

    return-void
.end method
