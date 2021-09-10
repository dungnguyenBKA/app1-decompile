.class Lb00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljw<",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lzz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lkw;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Lnw;->d(Ljava/lang/Object;)Lkw;

    move-result-object p1

    return-object p1
.end method
