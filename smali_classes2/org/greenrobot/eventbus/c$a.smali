.class Lorg/greenrobot/eventbus/c$a;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/eventbus/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lorg/greenrobot/eventbus/c$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/greenrobot/eventbus/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lorg/greenrobot/eventbus/c$b;

    invoke-direct {v0}, Lorg/greenrobot/eventbus/c$b;-><init>()V

    return-object v0
.end method
