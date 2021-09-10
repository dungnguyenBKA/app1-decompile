.class final synthetic Ll20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr20$a;


# static fields
.field private static final a:Ll20;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll20;

    invoke-direct {v0}, Ll20;-><init>()V

    sput-object v0, Ll20;->a:Ll20;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lr20$a;
    .locals 1

    sget-object v0, Ll20;->a:Ll20;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/util/JsonReader;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget v0, Lr20;->b:I

    .line 2
    invoke-static {}, Li20$c$b;->a()Li20$c$b$a;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v2, "filename"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "contents"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Li20$c$b$a;->b([B)Li20$c$b$a;

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Li20$c$b$a;->c(Ljava/lang/String;)Li20$c$b$a;

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 11
    invoke-virtual {v0}, Li20$c$b$a;->a()Li20$c$b;

    move-result-object p1

    return-object p1
.end method
