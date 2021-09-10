.class public final Lgu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgu$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqt<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lgu;
    .locals 1

    .line 1
    invoke-static {}, Lgu$a;->a()Lgu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    const-string v0, "com.google.android.datatransport.events"

    return-object v0
.end method
