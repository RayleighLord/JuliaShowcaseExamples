### A Pluto.jl notebook ###
# v0.19.11

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local iv = try Base.loaded_modules[Base.PkgId(Base.UUID("6e696c72-6542-2067-7265-42206c756150"), "AbstractPlutoDingetjes")].Bonds.initial_value catch; b -> missing; end
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : iv(el)
        el
    end
end

# ╔═╡ 24ebda93-84c0-45ad-9614-3713c3b10f6a
begin
	using PlutoUI
	PlutoUI.TableOfContents(title="Tabla de Contenidos", depth=3, aside=true, indent=true)
end

# ╔═╡ e6320cf8-9301-11ec-3f30-93a359f008f5
html"""
<div class="banner-background">
</div>

<div class="nb-intro">
	<div class="header-box"> 
		<p class="nb-intro-header">PlutoUI</p>
		<p class="nb-intro-title">Gallery of the interactive elements of Pluto</p>
		<p style="text-align:center;"> 
			<img src="https://github.com/RayleighLord/Resources/blob/main/img/logos/logo.png?raw=true" alt="RayleighLord"
			width="150"
			class="logo">
		</p>
	</div>
</div>

<style>

.banner-background {
	position: absolute;
	top: -550px;
	left: -40vw;
	height: 550px;
	width: 150vw;
	background-color: #212529;
	opacity: 1;
}

.nb-intro {
	position: absolute;
	top: -550px;
	left: -8px;
	height: 550px;
	width: calc(100% + 8px);
	background-image: #212529;
}

.header-box {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: start;

	gap: 15px;
	height: 500px;
	margin-top: 20px;
	padding: 40px 10px 0px 10px;
	border: 5px solid #adb5bd;
	border-radius: 50px;
	box-shadow: 0px 5px 20px rgba(255, 255, 255, 0.25);
	text-align: center;
	position: relative;
	transition: all 0.3s;
}

.header-box:hover {
	transform: translateY(-5px);	
	box-shadow: 0px 10px 30px rgba(255, 255, 255, 0.3);
}

.nb-intro-header {
	display: box;
	color: #adb5bd;
	font-family: Vollkorn, serif;
	font-size: 32px;
	font-weight: 500;
	font-feature-settings: 'lnum', 'pnum';
}

.nb-intro-title {
	color: #f1f3f5;
	font-family: Vollkorn, serif;
	font-size: 50px;
	font-weight: 600;
	font-feature-settings: 'lnum', 'pnum';
	line-height: 1.2;
}

.logo {
}

body {
	overflow-x: hidden;
	box-sizing: border-box;
}

pluto-cell:first-child {
	margin-top: 550px;
}

main preamble {
    height: 0px;
    margin: 0px;
    padding: 0px;
}

</style>
"""

# ╔═╡ 7892846a-b987-4b84-890a-6fb305ba19c0
md"""
# Sección 1
"""

# ╔═╡ 1a7ed7ab-e666-4074-ad89-81126d49aa80
md"""
## Subsección 1.1
"""

# ╔═╡ 4e260b6f-faa3-4eb8-9a21-f18bc77e5245
md"""
α= $(@bind α Slider(-30:.5:30, show_value=true, default=0))
"""

# ╔═╡ a4abe001-1e6f-40a8-8e90-83a2ec3f9528
let

range = -1.5:.1:1.5
md"""
	
This is a "scrubbable" matrix: click on the number and drag to change!
	
**A =**  
	
``(``	
 $(@bind a Scrubbable( range; default=1.0))
 $(@bind b Scrubbable( range; default=0.0))
``)``

``(``
$(@bind c Scrubbable(range; default=0.0 ))
$(@bind d Scrubbable(range; default=1.0)) 
``)``  
	

	
"""
end

# ╔═╡ fc7a638a-279e-4072-8728-dd1bb3a3d13a
md"""
Show grid lines $(@bind show_grid CheckBox(default=true))
"""

# ╔═╡ 1dd5b258-0b1a-4748-89a9-d6b9e840a7d2
md"""
Text Field $(@bind text TextField((30, 1), default="Hello"))
"""

# ╔═╡ b50f71af-8ddf-404c-b4a9-757636c9b460
md"""
Vegetal $(@bind vegetable Select(["potato", "carrot"]))
"""

# ╔═╡ 659b8a0c-1624-47bb-ab26-a152fd982bf2
md"""
Fruta $(@bind fruit Select(["apple" => "🍎", "melon" => "🍉"]))
"""

# ╔═╡ 4ff355ad-b018-4756-a31c-65db23d19c89
md"""
Vegetable Basket $(@bind vegetable_basket MultiSelect(["potato", "carrot", "boerenkool"]))
"""

# ╔═╡ bc9ffb24-ae96-4842-b479-ae5b8d1eadcb
md"""
`f = ` $(@bind f html"<input type=color >")
"""

# ╔═╡ 61a6616d-635c-43cb-9b0f-cc67a45ad9e2
md"""
Fruit Basket $(@bind fruit_basket MultiCheckBox(["apple", "blueberry", "mango"]))
"""

# ╔═╡ 6f768e78-0b06-4a6b-8fc1-cb4e6dda18d6
md"""
Choose Functions $(@bind my_functions MultiCheckBox([sin, cos, tan]))
"""

# ╔═╡ 1f5469e8-6333-44fb-a1a4-25ffcfeb510b
[f(π) for f in my_functions]

# ╔═╡ 967a00af-5203-4e03-aaef-9eed6a6e36f4
md"""
Botón $(@bind clicked Button("Hello world"))
"""

# ╔═╡ f95133c8-765a-4384-9c50-747ed3d92bf3
clicked

# ╔═╡ 328c807c-6d24-4ba8-b1ca-f59904682a66
md"""
Botón reactivo $(@bind go Button("Recompute"))
"""

# ╔═╡ 94943965-fa5d-4e93-8d39-fe75de0842ac
let
	go
	
	md"I am $(rand(1:15)) years old!"
end

# ╔═╡ 34b6afaf-df24-477c-b6e4-9e95380ab2c0
md"""
Elige un archivo $(@bind important_document FilePicker())
"""

# ╔═╡ facafd92-5ac2-4626-95e9-379a0f5d25d0
important_document

# ╔═╡ 916bbf50-871c-4298-90e2-e84500b3ed20
@bind t Clock()

# ╔═╡ 03d32c48-445f-4398-91f4-5482a7dadbc9
t

# ╔═╡ 009559fb-84a8-41e1-8444-1f73cf5c4e5b
@bind t_slow Clock(5.0, true)

# ╔═╡ ba7313d6-a863-4025-a801-bcb452b4313d
t_slow

# ╔═╡ 4c67fdcd-de63-4cc0-b8b1-558542058d6d
DownloadButton([0x01, 0x02, 0x03], "secret_data.bin")

# ╔═╡ 2045e332-6938-4fc1-aa9a-c6a0609b9025
@bind distance confirm(Slider(1:100))

# ╔═╡ 51c2ffc0-2d02-4099-9326-8179ec540bf7
distance

# ╔═╡ 842e5651-4eff-4c55-b064-57ea7f331171
import PlutoUI: combine

# ╔═╡ 07602db6-d356-4451-b732-14b3611c3dd0
function wind_speed_input(directions::Vector)
	
	return combine() do Child
		
		inputs = [
			md""" $(name): $(
				Child(name, Slider(1:100))
			)"""
			
			for name in directions
		]
		
		md"""
		#### Wind speeds
		$(inputs)
		"""
	end
end

# ╔═╡ 87b28036-d44f-4ed3-9dc6-0ace5f647c47
@bind speeds wind_speed_input(["North", "East", "South", "West"])

# ╔═╡ b0966648-5ecc-40a5-90a9-663ba333a5bb
speeds

# ╔═╡ 42cf493c-6a94-4f72-9eda-29bbb44cac89
dog_url = "https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Welsh_Springer_Spaniel.jpg/640px-Welsh_Springer_Spaniel.jpg"

# ╔═╡ 9894d00b-df65-4ee5-9799-a225f5ffd713
t_rex_url = "https://upload.wikimedia.org/wikipedia/commons/transcoded/6/62/Meow.ogg/Meow.ogg.mp3"

# ╔═╡ e17ec97b-1281-4ed7-b122-bd8a86495ece
flower_url = "https://upload.wikimedia.org/wikipedia/commons/4/41/Sunflower_Flower_Opening_Time_Lapse.ogv"

# ╔═╡ 98d5007f-d06c-4da9-b151-93956e38b467
md"""Hello I am a dog $(Resource(dog_url))"""

# ╔═╡ 620589bf-d86d-47b7-9aa9-be4707991e09
md"""And I sound like this: $(Resource(t_rex_url))"""

# ╔═╡ 951219e2-a8f1-4890-802f-952e3433bc77
md"""This is my flower friend

$(Resource(flower_url, :width => 400))"""

# ╔═╡ 0317e5f8-268a-467c-b5e4-f5ce72702c3e
md"""
$(Resource(dog_url, :width => 20))
$(Resource(dog_url, :width => 50))
$(Resource(dog_url, :width => 100))
$(Resource(dog_url, 
	:width => 100, 
	:style => "filter: grayscale(100%); border: 3px solid black;"))
"""

# ╔═╡ 91c69050-d6b2-4c2e-8a4b-3723328b9df8
Resource(flower_url, :width => 200, :autoplay => "", :loop => "")

# ╔═╡ d3c6c218-3366-4599-8475-087f5eebd493
html"""

<div style="padding:56.25% 0 0 0;position:relative;"><iframe src="https://player.vimeo.com/video/438210156" style="position:absolute;top:0;left:0;width:100%;height:100%;" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe></div><script src="https://player.vimeo.com/api/player.js"></script>

"""

# ╔═╡ 4976ee97-377d-484d-874b-da12f41a6437
md"""
### Subsubsección 1.1.1
"""

# ╔═╡ 0797877e-a115-481e-9522-19fd91e001b1
space = html"<br><br><br>"

# ╔═╡ 82282db6-240f-4318-a475-f91229aa6c76
note(text) = Markdown.MD(Markdown.Admonition("note", "Nota", [text]));

# ╔═╡ 1088e673-bb77-4de6-848d-8a5f13d37cfc
note(md"""
Esto es una nota
""")

# ╔═╡ 19c98e87-2114-4362-aa55-4859c20ffc27
hint(text) = Markdown.MD(Markdown.Admonition("hint", "Pista 🔎", [text]));

# ╔═╡ 00fd0e72-2ece-488a-88d4-8be257e91e44
hint(md"""
Esto es una pista
""")

# ╔═╡ 80e9a650-57d9-4e11-acad-aa0f5894ef34
almost(text) = Markdown.MD(Markdown.Admonition("warning", "¡Ya casi lo tienes!", [text]));

# ╔═╡ fb1d1abf-dc78-459f-be85-9d9c49ca4457
almost(md"""
Solo te queda muy poco para obtener la respuesta correcta!
""")

# ╔═╡ 7a89b51b-51d7-4090-8a9f-2585363183fc
still_missing(text=md"Sustituye `missing` por tu respuesta.") = Markdown.MD(Markdown.Admonition("warning", "Completa el ejercicio 🧐", [text]));

# ╔═╡ 2064bff8-d401-4fed-9387-745fc2159208
still_missing()

# ╔═╡ a9cd5b48-921f-4b48-8c63-5060c5d7c1d5
keep_working(text=md"La respuesta todavía no es correcta.") = Markdown.MD(Markdown.Admonition("danger", "¡Sigue intentándolo!", [text]));

# ╔═╡ 3ee97499-95ae-4eb9-a889-a214d56ef786
keep_working()

# ╔═╡ 20089647-2ac5-405f-b8ba-aa5dd1733271
good = [md"¡Buen trabajo! 🎉", md"¡Correcto! 🎉", md"¡Bien hecho! 👍", md"La respuesta es correcta 🎉", md"Continúa a la siguiente pregunta 👍", md"¡Enhorabuena! 🎉",];

# ╔═╡ 8fd2f719-294a-41cc-bb47-5afbbc2bfa9c
correct(text=rand(good)) = Markdown.MD(Markdown.Admonition("correct", "Lo conseguiste!", [text]));

# ╔═╡ 57f3ef0d-429b-41d0-a342-abfa2ad16a87
correct()

# ╔═╡ 3f6aec31-e108-4caf-bec1-c4ae57b6b72c
not_defined(variable_name) = Markdown.MD(Markdown.Admonition("danger", "¡Cuidado!", [md"Aségurate de haber definido una variable llamada **$(Markdown.Code(string(variable_name)))**"]));

# ╔═╡ f528d7b1-f115-4896-bf09-0d842041919c
not_defined(:square_matrix)

# ╔═╡ 5ec67974-c7dc-43d6-a0ef-b804ab1bf64b
todo(text) = HTML("""<div
	style="background: rgb(220, 200, 255); padding: 2em; border-radius: 1em;"
	><h2>TODO</h2>$(repr(MIME"text/html"(), text))</div>""");

# ╔═╡ 7d4b625d-4e24-42a1-96e1-fd5909862dbb
todo(md"Todavía falta por implementar el bucle `for`")

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.39"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.8.0"
manifest_format = "2.0"
project_hash = "6ff2529dffd0652d0349be095d4d180abf958f56"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "8eaf9f1b4921132a4cff3f36a1d9ba923b14a481"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.1.4"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.1"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "eb7f0f8307f71fac7c606984ea5fb2817275d6e4"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.4"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "0.5.2+0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.6.0"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "8d511d5b81240fc8e6802386302675bdf47737b9"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.4"

[[deps.HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "c47c5fa4c5308f27ccaac35504858d8914e102f9"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.4"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "f7be53659ab06ddc986428d3a9dcc95f6fa6705a"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.2"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "3c837543ddb02250ef42f4738347454f95079d4e"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.3"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"
version = "0.6.3"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"
version = "7.84.0+0"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"
version = "1.10.2+0"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"
version = "2.28.0+0"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2022.2.1"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.2.0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.20+0"

[[deps.Parsers]]
deps = ["Dates"]
git-tree-sha1 = "0044b23da09b5608b4ecacb4e5e6c6332f833a7e"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.3.2"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.8.0"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "UUIDs"]
git-tree-sha1 = "8d1f54886b9037091edf146b517989fc4a09efec"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.39"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.0"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"
version = "1.10.0"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.Tricks]]
git-tree-sha1 = "6bac775f2d42a611cdfcd1fb217ee719630c4175"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.6"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.2.12+3"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl", "OpenBLAS_jll"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.1.1+0"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.48.0+0"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
version = "17.4.0+0"
"""

# ╔═╡ Cell order:
# ╟─e6320cf8-9301-11ec-3f30-93a359f008f5
# ╠═24ebda93-84c0-45ad-9614-3713c3b10f6a
# ╟─7892846a-b987-4b84-890a-6fb305ba19c0
# ╟─1a7ed7ab-e666-4074-ad89-81126d49aa80
# ╠═4e260b6f-faa3-4eb8-9a21-f18bc77e5245
# ╠═a4abe001-1e6f-40a8-8e90-83a2ec3f9528
# ╠═fc7a638a-279e-4072-8728-dd1bb3a3d13a
# ╠═1dd5b258-0b1a-4748-89a9-d6b9e840a7d2
# ╠═b50f71af-8ddf-404c-b4a9-757636c9b460
# ╠═659b8a0c-1624-47bb-ab26-a152fd982bf2
# ╠═4ff355ad-b018-4756-a31c-65db23d19c89
# ╠═bc9ffb24-ae96-4842-b479-ae5b8d1eadcb
# ╠═61a6616d-635c-43cb-9b0f-cc67a45ad9e2
# ╠═6f768e78-0b06-4a6b-8fc1-cb4e6dda18d6
# ╠═1f5469e8-6333-44fb-a1a4-25ffcfeb510b
# ╠═967a00af-5203-4e03-aaef-9eed6a6e36f4
# ╠═f95133c8-765a-4384-9c50-747ed3d92bf3
# ╠═328c807c-6d24-4ba8-b1ca-f59904682a66
# ╠═94943965-fa5d-4e93-8d39-fe75de0842ac
# ╠═34b6afaf-df24-477c-b6e4-9e95380ab2c0
# ╠═facafd92-5ac2-4626-95e9-379a0f5d25d0
# ╠═916bbf50-871c-4298-90e2-e84500b3ed20
# ╠═03d32c48-445f-4398-91f4-5482a7dadbc9
# ╠═009559fb-84a8-41e1-8444-1f73cf5c4e5b
# ╠═ba7313d6-a863-4025-a801-bcb452b4313d
# ╠═4c67fdcd-de63-4cc0-b8b1-558542058d6d
# ╠═2045e332-6938-4fc1-aa9a-c6a0609b9025
# ╠═51c2ffc0-2d02-4099-9326-8179ec540bf7
# ╠═842e5651-4eff-4c55-b064-57ea7f331171
# ╠═87b28036-d44f-4ed3-9dc6-0ace5f647c47
# ╠═b0966648-5ecc-40a5-90a9-663ba333a5bb
# ╠═07602db6-d356-4451-b732-14b3611c3dd0
# ╠═42cf493c-6a94-4f72-9eda-29bbb44cac89
# ╠═9894d00b-df65-4ee5-9799-a225f5ffd713
# ╠═e17ec97b-1281-4ed7-b122-bd8a86495ece
# ╠═98d5007f-d06c-4da9-b151-93956e38b467
# ╠═620589bf-d86d-47b7-9aa9-be4707991e09
# ╠═951219e2-a8f1-4890-802f-952e3433bc77
# ╠═0317e5f8-268a-467c-b5e4-f5ce72702c3e
# ╠═91c69050-d6b2-4c2e-8a4b-3723328b9df8
# ╠═d3c6c218-3366-4599-8475-087f5eebd493
# ╟─4976ee97-377d-484d-874b-da12f41a6437
# ╠═1088e673-bb77-4de6-848d-8a5f13d37cfc
# ╠═00fd0e72-2ece-488a-88d4-8be257e91e44
# ╠═fb1d1abf-dc78-459f-be85-9d9c49ca4457
# ╠═2064bff8-d401-4fed-9387-745fc2159208
# ╠═3ee97499-95ae-4eb9-a889-a214d56ef786
# ╠═57f3ef0d-429b-41d0-a342-abfa2ad16a87
# ╠═f528d7b1-f115-4896-bf09-0d842041919c
# ╠═7d4b625d-4e24-42a1-96e1-fd5909862dbb
# ╟─0797877e-a115-481e-9522-19fd91e001b1
# ╟─82282db6-240f-4318-a475-f91229aa6c76
# ╟─19c98e87-2114-4362-aa55-4859c20ffc27
# ╟─80e9a650-57d9-4e11-acad-aa0f5894ef34
# ╟─7a89b51b-51d7-4090-8a9f-2585363183fc
# ╟─a9cd5b48-921f-4b48-8c63-5060c5d7c1d5
# ╟─20089647-2ac5-405f-b8ba-aa5dd1733271
# ╟─8fd2f719-294a-41cc-bb47-5afbbc2bfa9c
# ╟─3f6aec31-e108-4caf-bec1-c4ae57b6b72c
# ╟─5ec67974-c7dc-43d6-a0ef-b804ab1bf64b
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
