.class Lob;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lub$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "nm"

    const-string v1, "ind"

    const-string v2, "ks"

    const-string v3, "hd"

    .line 1
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lub$a;->a([Ljava/lang/String;)Lub$a;

    move-result-object v0

    sput-object v0, Lob;->a:Lub$a;

    return-void
.end method
